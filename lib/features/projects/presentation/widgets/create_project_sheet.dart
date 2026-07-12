import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/features/projects/data/models/create_project_model.dart';
import 'package:test_agent_mobile/features/projects/presentation/logic/notifiers/create_project_notifier.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/labeled_form_field.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/sheet_action_button.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/sheet_drag_handle.dart';
import 'package:test_agent_mobile/features/projects/presentation/widgets/sheet_header.dart';

class CreateProjectSheet extends ConsumerStatefulWidget {
  const CreateProjectSheet({super.key});

  @override
  ConsumerState<CreateProjectSheet> createState() => _CreateProjectSheetState();
}

class _CreateProjectSheetState extends ConsumerState<CreateProjectSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _handleCreate() async {
    if (!_formKey.currentState!.validate()) return;

    final success = await ref
        .read(createProjectNotifierProvider.notifier)
        .createProject(
          createProjectModel: CreateProjectModel(
            name: _nameController.text.trim(),
            description: _descriptionController.text.trim(),
          ),
        );
    if (success && mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final createState = ref.watch(createProjectNotifierProvider);
    final isLoading = createState.isLoading;

    ref.listen<AsyncValue<void>>(createProjectNotifierProvider, (
      previous,
      next,
    ) {
      if (next.hasError && !next.isLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to create project: ${next.error}')),
        );
      }
    });

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 24.h),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SheetDragHandle(),
              SheetHeader(
                title: "New project",
                onClose: () => Navigator.pop(context),
              ),
              SizedBox(height: 4.h),
              Text(
                "Give your project a name and a short description.",
                style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade500),
              ),
              SizedBox(height: 20.h),
              LabeledFormField(
                label: "Project name",
                hint: "Website redesign",
                controller: _nameController,
                helperText: "Visible to everyone on the team.",
                validator: (value) => (value == null || value.trim().isEmpty)
                    ? "Project name is required"
                    : null,
              ),
              SizedBox(height: 18.h),
              LabeledFormField(
                label: "Description",
                hint: "What's this project about?",
                controller: _descriptionController,
                maxLines: 3,
              ),
              SizedBox(height: 24.h),
              SheetActionButtons(
                isLoading: isLoading,
                onCancel: () => Navigator.pop(context),
                onSubmit: _handleCreate,
                submitLabel: "Create project",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
