// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProjectsTable extends Projects with TableInfo<$ProjectsTable, Project> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _runsCountMeta = const VerificationMeta(
    'runsCount',
  );
  @override
  late final GeneratedColumn<int> runsCount = GeneratedColumn<int>(
    'runs_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastRunDateMeta = const VerificationMeta(
    'lastRunDate',
  );
  @override
  late final GeneratedColumn<DateTime> lastRunDate = GeneratedColumn<DateTime>(
    'last_run_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    runsCount,
    lastRunDate,
    userId,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'projects';
  @override
  VerificationContext validateIntegrity(
    Insertable<Project> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('runs_count')) {
      context.handle(
        _runsCountMeta,
        runsCount.isAcceptableOrUnknown(data['runs_count']!, _runsCountMeta),
      );
    }
    if (data.containsKey('last_run_date')) {
      context.handle(
        _lastRunDateMeta,
        lastRunDate.isAcceptableOrUnknown(
          data['last_run_date']!,
          _lastRunDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastRunDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Project map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Project(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      runsCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}runs_count'],
      )!,
      lastRunDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_run_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $ProjectsTable createAlias(String alias) {
    return $ProjectsTable(attachedDatabase, alias);
  }
}

class Project extends DataClass implements Insertable<Project> {
  final String id;
  final String name;
  final String? description;
  final int runsCount;
  final DateTime lastRunDate;
  final String? userId;
  final DateTime cachedAt;
  const Project({
    required this.id,
    required this.name,
    this.description,
    required this.runsCount,
    required this.lastRunDate,
    this.userId,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['runs_count'] = Variable<int>(runsCount);
    map['last_run_date'] = Variable<DateTime>(lastRunDate);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  ProjectsCompanion toCompanion(bool nullToAbsent) {
    return ProjectsCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      runsCount: Value(runsCount),
      lastRunDate: Value(lastRunDate),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
      cachedAt: Value(cachedAt),
    );
  }

  factory Project.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Project(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      runsCount: serializer.fromJson<int>(json['runsCount']),
      lastRunDate: serializer.fromJson<DateTime>(json['lastRunDate']),
      userId: serializer.fromJson<String?>(json['userId']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'runsCount': serializer.toJson<int>(runsCount),
      'lastRunDate': serializer.toJson<DateTime>(lastRunDate),
      'userId': serializer.toJson<String?>(userId),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  Project copyWith({
    String? id,
    String? name,
    Value<String?> description = const Value.absent(),
    int? runsCount,
    DateTime? lastRunDate,
    Value<String?> userId = const Value.absent(),
    DateTime? cachedAt,
  }) => Project(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    runsCount: runsCount ?? this.runsCount,
    lastRunDate: lastRunDate ?? this.lastRunDate,
    userId: userId.present ? userId.value : this.userId,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  Project copyWithCompanion(ProjectsCompanion data) {
    return Project(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      runsCount: data.runsCount.present ? data.runsCount.value : this.runsCount,
      lastRunDate: data.lastRunDate.present
          ? data.lastRunDate.value
          : this.lastRunDate,
      userId: data.userId.present ? data.userId.value : this.userId,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Project(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('runsCount: $runsCount, ')
          ..write('lastRunDate: $lastRunDate, ')
          ..write('userId: $userId, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    runsCount,
    lastRunDate,
    userId,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Project &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.runsCount == this.runsCount &&
          other.lastRunDate == this.lastRunDate &&
          other.userId == this.userId &&
          other.cachedAt == this.cachedAt);
}

class ProjectsCompanion extends UpdateCompanion<Project> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<int> runsCount;
  final Value<DateTime> lastRunDate;
  final Value<String?> userId;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const ProjectsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.runsCount = const Value.absent(),
    this.lastRunDate = const Value.absent(),
    this.userId = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProjectsCompanion.insert({
    required String id,
    required String name,
    this.description = const Value.absent(),
    this.runsCount = const Value.absent(),
    required DateTime lastRunDate,
    this.userId = const Value.absent(),
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       lastRunDate = Value(lastRunDate),
       cachedAt = Value(cachedAt);
  static Insertable<Project> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? runsCount,
    Expression<DateTime>? lastRunDate,
    Expression<String>? userId,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (runsCount != null) 'runs_count': runsCount,
      if (lastRunDate != null) 'last_run_date': lastRunDate,
      if (userId != null) 'user_id': userId,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProjectsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<int>? runsCount,
    Value<DateTime>? lastRunDate,
    Value<String?>? userId,
    Value<DateTime>? cachedAt,
    Value<int>? rowid,
  }) {
    return ProjectsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      runsCount: runsCount ?? this.runsCount,
      lastRunDate: lastRunDate ?? this.lastRunDate,
      userId: userId ?? this.userId,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (runsCount.present) {
      map['runs_count'] = Variable<int>(runsCount.value);
    }
    if (lastRunDate.present) {
      map['last_run_date'] = Variable<DateTime>(lastRunDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('runsCount: $runsCount, ')
          ..write('lastRunDate: $lastRunDate, ')
          ..write('userId: $userId, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RunsTable extends Runs with TableInfo<$RunsTable, Run> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RunsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<String> projectId = GeneratedColumn<String>(
    'project_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES projects (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _storyMeta = const VerificationMeta('story');
  @override
  late final GeneratedColumn<String> story = GeneratedColumn<String>(
    'story',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _overallStatusMeta = const VerificationMeta(
    'overallStatus',
  );
  @override
  late final GeneratedColumn<String> overallStatus = GeneratedColumn<String>(
    'overall_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _goalAchievedMeta = const VerificationMeta(
    'goalAchieved',
  );
  @override
  late final GeneratedColumn<bool> goalAchieved = GeneratedColumn<bool>(
    'goal_achieved',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("goal_achieved" IN (0, 1))',
    ),
  );
  static const VerificationMeta _totalDurationMsMeta = const VerificationMeta(
    'totalDurationMs',
  );
  @override
  late final GeneratedColumn<int> totalDurationMs = GeneratedColumn<int>(
    'total_duration_ms',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _passedMeta = const VerificationMeta('passed');
  @override
  late final GeneratedColumn<int> passed = GeneratedColumn<int>(
    'passed',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _failedMeta = const VerificationMeta('failed');
  @override
  late final GeneratedColumn<int> failed = GeneratedColumn<int>(
    'failed',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _summaryMeta = const VerificationMeta(
    'summary',
  );
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
    'summary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _canceledMeta = const VerificationMeta(
    'canceled',
  );
  @override
  late final GeneratedColumn<bool> canceled = GeneratedColumn<bool>(
    'canceled',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("canceled" IN (0, 1))',
    ),
  );
  static const VerificationMeta _cancelReasonMeta = const VerificationMeta(
    'cancelReason',
  );
  @override
  late final GeneratedColumn<String> cancelReason = GeneratedColumn<String>(
    'cancel_reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pausedMeta = const VerificationMeta('paused');
  @override
  late final GeneratedColumn<bool> paused = GeneratedColumn<bool>(
    'paused',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("paused" IN (0, 1))',
    ),
  );
  static const VerificationMeta _pauseCheckpointJsonMeta =
      const VerificationMeta('pauseCheckpointJson');
  @override
  late final GeneratedColumn<String> pauseCheckpointJson =
      GeneratedColumn<String>(
        'pause_checkpoint_json',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _executionModeMeta = const VerificationMeta(
    'executionMode',
  );
  @override
  late final GeneratedColumn<String> executionMode = GeneratedColumn<String>(
    'execution_mode',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    story,
    url,
    createdAt,
    overallStatus,
    goalAchieved,
    totalDurationMs,
    passed,
    failed,
    summary,
    canceled,
    cancelReason,
    paused,
    pauseCheckpointJson,
    executionMode,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'runs';
  @override
  VerificationContext validateIntegrity(
    Insertable<Run> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    }
    if (data.containsKey('story')) {
      context.handle(
        _storyMeta,
        story.isAcceptableOrUnknown(data['story']!, _storyMeta),
      );
    } else if (isInserting) {
      context.missing(_storyMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('overall_status')) {
      context.handle(
        _overallStatusMeta,
        overallStatus.isAcceptableOrUnknown(
          data['overall_status']!,
          _overallStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_overallStatusMeta);
    }
    if (data.containsKey('goal_achieved')) {
      context.handle(
        _goalAchievedMeta,
        goalAchieved.isAcceptableOrUnknown(
          data['goal_achieved']!,
          _goalAchievedMeta,
        ),
      );
    }
    if (data.containsKey('total_duration_ms')) {
      context.handle(
        _totalDurationMsMeta,
        totalDurationMs.isAcceptableOrUnknown(
          data['total_duration_ms']!,
          _totalDurationMsMeta,
        ),
      );
    }
    if (data.containsKey('passed')) {
      context.handle(
        _passedMeta,
        passed.isAcceptableOrUnknown(data['passed']!, _passedMeta),
      );
    }
    if (data.containsKey('failed')) {
      context.handle(
        _failedMeta,
        failed.isAcceptableOrUnknown(data['failed']!, _failedMeta),
      );
    }
    if (data.containsKey('summary')) {
      context.handle(
        _summaryMeta,
        summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta),
      );
    }
    if (data.containsKey('canceled')) {
      context.handle(
        _canceledMeta,
        canceled.isAcceptableOrUnknown(data['canceled']!, _canceledMeta),
      );
    }
    if (data.containsKey('cancel_reason')) {
      context.handle(
        _cancelReasonMeta,
        cancelReason.isAcceptableOrUnknown(
          data['cancel_reason']!,
          _cancelReasonMeta,
        ),
      );
    }
    if (data.containsKey('paused')) {
      context.handle(
        _pausedMeta,
        paused.isAcceptableOrUnknown(data['paused']!, _pausedMeta),
      );
    }
    if (data.containsKey('pause_checkpoint_json')) {
      context.handle(
        _pauseCheckpointJsonMeta,
        pauseCheckpointJson.isAcceptableOrUnknown(
          data['pause_checkpoint_json']!,
          _pauseCheckpointJsonMeta,
        ),
      );
    }
    if (data.containsKey('execution_mode')) {
      context.handle(
        _executionModeMeta,
        executionMode.isAcceptableOrUnknown(
          data['execution_mode']!,
          _executionModeMeta,
        ),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Run map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Run(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}project_id'],
      ),
      story: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}story'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      overallStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}overall_status'],
      )!,
      goalAchieved: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}goal_achieved'],
      ),
      totalDurationMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_duration_ms'],
      ),
      passed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}passed'],
      ),
      failed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}failed'],
      ),
      summary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}summary'],
      ),
      canceled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}canceled'],
      ),
      cancelReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cancel_reason'],
      ),
      paused: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}paused'],
      ),
      pauseCheckpointJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pause_checkpoint_json'],
      ),
      executionMode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}execution_mode'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $RunsTable createAlias(String alias) {
    return $RunsTable(attachedDatabase, alias);
  }
}

class Run extends DataClass implements Insertable<Run> {
  final String id;
  final String? projectId;
  final String story;
  final String url;
  final DateTime createdAt;
  final String overallStatus;
  final bool? goalAchieved;
  final int? totalDurationMs;
  final int? passed;
  final int? failed;
  final String? summary;
  final bool? canceled;
  final String? cancelReason;
  final bool? paused;
  final String? pauseCheckpointJson;
  final String? executionMode;
  final DateTime cachedAt;
  const Run({
    required this.id,
    this.projectId,
    required this.story,
    required this.url,
    required this.createdAt,
    required this.overallStatus,
    this.goalAchieved,
    this.totalDurationMs,
    this.passed,
    this.failed,
    this.summary,
    this.canceled,
    this.cancelReason,
    this.paused,
    this.pauseCheckpointJson,
    this.executionMode,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String>(projectId);
    }
    map['story'] = Variable<String>(story);
    map['url'] = Variable<String>(url);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['overall_status'] = Variable<String>(overallStatus);
    if (!nullToAbsent || goalAchieved != null) {
      map['goal_achieved'] = Variable<bool>(goalAchieved);
    }
    if (!nullToAbsent || totalDurationMs != null) {
      map['total_duration_ms'] = Variable<int>(totalDurationMs);
    }
    if (!nullToAbsent || passed != null) {
      map['passed'] = Variable<int>(passed);
    }
    if (!nullToAbsent || failed != null) {
      map['failed'] = Variable<int>(failed);
    }
    if (!nullToAbsent || summary != null) {
      map['summary'] = Variable<String>(summary);
    }
    if (!nullToAbsent || canceled != null) {
      map['canceled'] = Variable<bool>(canceled);
    }
    if (!nullToAbsent || cancelReason != null) {
      map['cancel_reason'] = Variable<String>(cancelReason);
    }
    if (!nullToAbsent || paused != null) {
      map['paused'] = Variable<bool>(paused);
    }
    if (!nullToAbsent || pauseCheckpointJson != null) {
      map['pause_checkpoint_json'] = Variable<String>(pauseCheckpointJson);
    }
    if (!nullToAbsent || executionMode != null) {
      map['execution_mode'] = Variable<String>(executionMode);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  RunsCompanion toCompanion(bool nullToAbsent) {
    return RunsCompanion(
      id: Value(id),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      story: Value(story),
      url: Value(url),
      createdAt: Value(createdAt),
      overallStatus: Value(overallStatus),
      goalAchieved: goalAchieved == null && nullToAbsent
          ? const Value.absent()
          : Value(goalAchieved),
      totalDurationMs: totalDurationMs == null && nullToAbsent
          ? const Value.absent()
          : Value(totalDurationMs),
      passed: passed == null && nullToAbsent
          ? const Value.absent()
          : Value(passed),
      failed: failed == null && nullToAbsent
          ? const Value.absent()
          : Value(failed),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      canceled: canceled == null && nullToAbsent
          ? const Value.absent()
          : Value(canceled),
      cancelReason: cancelReason == null && nullToAbsent
          ? const Value.absent()
          : Value(cancelReason),
      paused: paused == null && nullToAbsent
          ? const Value.absent()
          : Value(paused),
      pauseCheckpointJson: pauseCheckpointJson == null && nullToAbsent
          ? const Value.absent()
          : Value(pauseCheckpointJson),
      executionMode: executionMode == null && nullToAbsent
          ? const Value.absent()
          : Value(executionMode),
      cachedAt: Value(cachedAt),
    );
  }

  factory Run.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Run(
      id: serializer.fromJson<String>(json['id']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      story: serializer.fromJson<String>(json['story']),
      url: serializer.fromJson<String>(json['url']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      overallStatus: serializer.fromJson<String>(json['overallStatus']),
      goalAchieved: serializer.fromJson<bool?>(json['goalAchieved']),
      totalDurationMs: serializer.fromJson<int?>(json['totalDurationMs']),
      passed: serializer.fromJson<int?>(json['passed']),
      failed: serializer.fromJson<int?>(json['failed']),
      summary: serializer.fromJson<String?>(json['summary']),
      canceled: serializer.fromJson<bool?>(json['canceled']),
      cancelReason: serializer.fromJson<String?>(json['cancelReason']),
      paused: serializer.fromJson<bool?>(json['paused']),
      pauseCheckpointJson: serializer.fromJson<String?>(
        json['pauseCheckpointJson'],
      ),
      executionMode: serializer.fromJson<String?>(json['executionMode']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'projectId': serializer.toJson<String?>(projectId),
      'story': serializer.toJson<String>(story),
      'url': serializer.toJson<String>(url),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'overallStatus': serializer.toJson<String>(overallStatus),
      'goalAchieved': serializer.toJson<bool?>(goalAchieved),
      'totalDurationMs': serializer.toJson<int?>(totalDurationMs),
      'passed': serializer.toJson<int?>(passed),
      'failed': serializer.toJson<int?>(failed),
      'summary': serializer.toJson<String?>(summary),
      'canceled': serializer.toJson<bool?>(canceled),
      'cancelReason': serializer.toJson<String?>(cancelReason),
      'paused': serializer.toJson<bool?>(paused),
      'pauseCheckpointJson': serializer.toJson<String?>(pauseCheckpointJson),
      'executionMode': serializer.toJson<String?>(executionMode),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  Run copyWith({
    String? id,
    Value<String?> projectId = const Value.absent(),
    String? story,
    String? url,
    DateTime? createdAt,
    String? overallStatus,
    Value<bool?> goalAchieved = const Value.absent(),
    Value<int?> totalDurationMs = const Value.absent(),
    Value<int?> passed = const Value.absent(),
    Value<int?> failed = const Value.absent(),
    Value<String?> summary = const Value.absent(),
    Value<bool?> canceled = const Value.absent(),
    Value<String?> cancelReason = const Value.absent(),
    Value<bool?> paused = const Value.absent(),
    Value<String?> pauseCheckpointJson = const Value.absent(),
    Value<String?> executionMode = const Value.absent(),
    DateTime? cachedAt,
  }) => Run(
    id: id ?? this.id,
    projectId: projectId.present ? projectId.value : this.projectId,
    story: story ?? this.story,
    url: url ?? this.url,
    createdAt: createdAt ?? this.createdAt,
    overallStatus: overallStatus ?? this.overallStatus,
    goalAchieved: goalAchieved.present ? goalAchieved.value : this.goalAchieved,
    totalDurationMs: totalDurationMs.present
        ? totalDurationMs.value
        : this.totalDurationMs,
    passed: passed.present ? passed.value : this.passed,
    failed: failed.present ? failed.value : this.failed,
    summary: summary.present ? summary.value : this.summary,
    canceled: canceled.present ? canceled.value : this.canceled,
    cancelReason: cancelReason.present ? cancelReason.value : this.cancelReason,
    paused: paused.present ? paused.value : this.paused,
    pauseCheckpointJson: pauseCheckpointJson.present
        ? pauseCheckpointJson.value
        : this.pauseCheckpointJson,
    executionMode: executionMode.present
        ? executionMode.value
        : this.executionMode,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  Run copyWithCompanion(RunsCompanion data) {
    return Run(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      story: data.story.present ? data.story.value : this.story,
      url: data.url.present ? data.url.value : this.url,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      overallStatus: data.overallStatus.present
          ? data.overallStatus.value
          : this.overallStatus,
      goalAchieved: data.goalAchieved.present
          ? data.goalAchieved.value
          : this.goalAchieved,
      totalDurationMs: data.totalDurationMs.present
          ? data.totalDurationMs.value
          : this.totalDurationMs,
      passed: data.passed.present ? data.passed.value : this.passed,
      failed: data.failed.present ? data.failed.value : this.failed,
      summary: data.summary.present ? data.summary.value : this.summary,
      canceled: data.canceled.present ? data.canceled.value : this.canceled,
      cancelReason: data.cancelReason.present
          ? data.cancelReason.value
          : this.cancelReason,
      paused: data.paused.present ? data.paused.value : this.paused,
      pauseCheckpointJson: data.pauseCheckpointJson.present
          ? data.pauseCheckpointJson.value
          : this.pauseCheckpointJson,
      executionMode: data.executionMode.present
          ? data.executionMode.value
          : this.executionMode,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Run(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('story: $story, ')
          ..write('url: $url, ')
          ..write('createdAt: $createdAt, ')
          ..write('overallStatus: $overallStatus, ')
          ..write('goalAchieved: $goalAchieved, ')
          ..write('totalDurationMs: $totalDurationMs, ')
          ..write('passed: $passed, ')
          ..write('failed: $failed, ')
          ..write('summary: $summary, ')
          ..write('canceled: $canceled, ')
          ..write('cancelReason: $cancelReason, ')
          ..write('paused: $paused, ')
          ..write('pauseCheckpointJson: $pauseCheckpointJson, ')
          ..write('executionMode: $executionMode, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    projectId,
    story,
    url,
    createdAt,
    overallStatus,
    goalAchieved,
    totalDurationMs,
    passed,
    failed,
    summary,
    canceled,
    cancelReason,
    paused,
    pauseCheckpointJson,
    executionMode,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Run &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.story == this.story &&
          other.url == this.url &&
          other.createdAt == this.createdAt &&
          other.overallStatus == this.overallStatus &&
          other.goalAchieved == this.goalAchieved &&
          other.totalDurationMs == this.totalDurationMs &&
          other.passed == this.passed &&
          other.failed == this.failed &&
          other.summary == this.summary &&
          other.canceled == this.canceled &&
          other.cancelReason == this.cancelReason &&
          other.paused == this.paused &&
          other.pauseCheckpointJson == this.pauseCheckpointJson &&
          other.executionMode == this.executionMode &&
          other.cachedAt == this.cachedAt);
}

class RunsCompanion extends UpdateCompanion<Run> {
  final Value<String> id;
  final Value<String?> projectId;
  final Value<String> story;
  final Value<String> url;
  final Value<DateTime> createdAt;
  final Value<String> overallStatus;
  final Value<bool?> goalAchieved;
  final Value<int?> totalDurationMs;
  final Value<int?> passed;
  final Value<int?> failed;
  final Value<String?> summary;
  final Value<bool?> canceled;
  final Value<String?> cancelReason;
  final Value<bool?> paused;
  final Value<String?> pauseCheckpointJson;
  final Value<String?> executionMode;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const RunsCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.story = const Value.absent(),
    this.url = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.overallStatus = const Value.absent(),
    this.goalAchieved = const Value.absent(),
    this.totalDurationMs = const Value.absent(),
    this.passed = const Value.absent(),
    this.failed = const Value.absent(),
    this.summary = const Value.absent(),
    this.canceled = const Value.absent(),
    this.cancelReason = const Value.absent(),
    this.paused = const Value.absent(),
    this.pauseCheckpointJson = const Value.absent(),
    this.executionMode = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RunsCompanion.insert({
    required String id,
    this.projectId = const Value.absent(),
    required String story,
    required String url,
    required DateTime createdAt,
    required String overallStatus,
    this.goalAchieved = const Value.absent(),
    this.totalDurationMs = const Value.absent(),
    this.passed = const Value.absent(),
    this.failed = const Value.absent(),
    this.summary = const Value.absent(),
    this.canceled = const Value.absent(),
    this.cancelReason = const Value.absent(),
    this.paused = const Value.absent(),
    this.pauseCheckpointJson = const Value.absent(),
    this.executionMode = const Value.absent(),
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       story = Value(story),
       url = Value(url),
       createdAt = Value(createdAt),
       overallStatus = Value(overallStatus),
       cachedAt = Value(cachedAt);
  static Insertable<Run> custom({
    Expression<String>? id,
    Expression<String>? projectId,
    Expression<String>? story,
    Expression<String>? url,
    Expression<DateTime>? createdAt,
    Expression<String>? overallStatus,
    Expression<bool>? goalAchieved,
    Expression<int>? totalDurationMs,
    Expression<int>? passed,
    Expression<int>? failed,
    Expression<String>? summary,
    Expression<bool>? canceled,
    Expression<String>? cancelReason,
    Expression<bool>? paused,
    Expression<String>? pauseCheckpointJson,
    Expression<String>? executionMode,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (story != null) 'story': story,
      if (url != null) 'url': url,
      if (createdAt != null) 'created_at': createdAt,
      if (overallStatus != null) 'overall_status': overallStatus,
      if (goalAchieved != null) 'goal_achieved': goalAchieved,
      if (totalDurationMs != null) 'total_duration_ms': totalDurationMs,
      if (passed != null) 'passed': passed,
      if (failed != null) 'failed': failed,
      if (summary != null) 'summary': summary,
      if (canceled != null) 'canceled': canceled,
      if (cancelReason != null) 'cancel_reason': cancelReason,
      if (paused != null) 'paused': paused,
      if (pauseCheckpointJson != null)
        'pause_checkpoint_json': pauseCheckpointJson,
      if (executionMode != null) 'execution_mode': executionMode,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RunsCompanion copyWith({
    Value<String>? id,
    Value<String?>? projectId,
    Value<String>? story,
    Value<String>? url,
    Value<DateTime>? createdAt,
    Value<String>? overallStatus,
    Value<bool?>? goalAchieved,
    Value<int?>? totalDurationMs,
    Value<int?>? passed,
    Value<int?>? failed,
    Value<String?>? summary,
    Value<bool?>? canceled,
    Value<String?>? cancelReason,
    Value<bool?>? paused,
    Value<String?>? pauseCheckpointJson,
    Value<String?>? executionMode,
    Value<DateTime>? cachedAt,
    Value<int>? rowid,
  }) {
    return RunsCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      story: story ?? this.story,
      url: url ?? this.url,
      createdAt: createdAt ?? this.createdAt,
      overallStatus: overallStatus ?? this.overallStatus,
      goalAchieved: goalAchieved ?? this.goalAchieved,
      totalDurationMs: totalDurationMs ?? this.totalDurationMs,
      passed: passed ?? this.passed,
      failed: failed ?? this.failed,
      summary: summary ?? this.summary,
      canceled: canceled ?? this.canceled,
      cancelReason: cancelReason ?? this.cancelReason,
      paused: paused ?? this.paused,
      pauseCheckpointJson: pauseCheckpointJson ?? this.pauseCheckpointJson,
      executionMode: executionMode ?? this.executionMode,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (story.present) {
      map['story'] = Variable<String>(story.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (overallStatus.present) {
      map['overall_status'] = Variable<String>(overallStatus.value);
    }
    if (goalAchieved.present) {
      map['goal_achieved'] = Variable<bool>(goalAchieved.value);
    }
    if (totalDurationMs.present) {
      map['total_duration_ms'] = Variable<int>(totalDurationMs.value);
    }
    if (passed.present) {
      map['passed'] = Variable<int>(passed.value);
    }
    if (failed.present) {
      map['failed'] = Variable<int>(failed.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (canceled.present) {
      map['canceled'] = Variable<bool>(canceled.value);
    }
    if (cancelReason.present) {
      map['cancel_reason'] = Variable<String>(cancelReason.value);
    }
    if (paused.present) {
      map['paused'] = Variable<bool>(paused.value);
    }
    if (pauseCheckpointJson.present) {
      map['pause_checkpoint_json'] = Variable<String>(
        pauseCheckpointJson.value,
      );
    }
    if (executionMode.present) {
      map['execution_mode'] = Variable<String>(executionMode.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RunsCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('story: $story, ')
          ..write('url: $url, ')
          ..write('createdAt: $createdAt, ')
          ..write('overallStatus: $overallStatus, ')
          ..write('goalAchieved: $goalAchieved, ')
          ..write('totalDurationMs: $totalDurationMs, ')
          ..write('passed: $passed, ')
          ..write('failed: $failed, ')
          ..write('summary: $summary, ')
          ..write('canceled: $canceled, ')
          ..write('cancelReason: $cancelReason, ')
          ..write('paused: $paused, ')
          ..write('pauseCheckpointJson: $pauseCheckpointJson, ')
          ..write('executionMode: $executionMode, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RunTargetsTable extends RunTargets
    with TableInfo<$RunTargetsTable, RunTarget> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RunTargetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _runIdMeta = const VerificationMeta('runId');
  @override
  late final GeneratedColumn<String> runId = GeneratedColumn<String>(
    'run_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES runs (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, runId, url, role];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'run_targets';
  @override
  VerificationContext validateIntegrity(
    Insertable<RunTarget> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('run_id')) {
      context.handle(
        _runIdMeta,
        runId.isAcceptableOrUnknown(data['run_id']!, _runIdMeta),
      );
    } else if (isInserting) {
      context.missing(_runIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RunTarget map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RunTarget(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      runId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}run_id'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      ),
    );
  }

  @override
  $RunTargetsTable createAlias(String alias) {
    return $RunTargetsTable(attachedDatabase, alias);
  }
}

class RunTarget extends DataClass implements Insertable<RunTarget> {
  final int id;
  final String runId;
  final String url;
  final String? role;
  const RunTarget({
    required this.id,
    required this.runId,
    required this.url,
    this.role,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['run_id'] = Variable<String>(runId);
    map['url'] = Variable<String>(url);
    if (!nullToAbsent || role != null) {
      map['role'] = Variable<String>(role);
    }
    return map;
  }

  RunTargetsCompanion toCompanion(bool nullToAbsent) {
    return RunTargetsCompanion(
      id: Value(id),
      runId: Value(runId),
      url: Value(url),
      role: role == null && nullToAbsent ? const Value.absent() : Value(role),
    );
  }

  factory RunTarget.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RunTarget(
      id: serializer.fromJson<int>(json['id']),
      runId: serializer.fromJson<String>(json['runId']),
      url: serializer.fromJson<String>(json['url']),
      role: serializer.fromJson<String?>(json['role']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'runId': serializer.toJson<String>(runId),
      'url': serializer.toJson<String>(url),
      'role': serializer.toJson<String?>(role),
    };
  }

  RunTarget copyWith({
    int? id,
    String? runId,
    String? url,
    Value<String?> role = const Value.absent(),
  }) => RunTarget(
    id: id ?? this.id,
    runId: runId ?? this.runId,
    url: url ?? this.url,
    role: role.present ? role.value : this.role,
  );
  RunTarget copyWithCompanion(RunTargetsCompanion data) {
    return RunTarget(
      id: data.id.present ? data.id.value : this.id,
      runId: data.runId.present ? data.runId.value : this.runId,
      url: data.url.present ? data.url.value : this.url,
      role: data.role.present ? data.role.value : this.role,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RunTarget(')
          ..write('id: $id, ')
          ..write('runId: $runId, ')
          ..write('url: $url, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, runId, url, role);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RunTarget &&
          other.id == this.id &&
          other.runId == this.runId &&
          other.url == this.url &&
          other.role == this.role);
}

class RunTargetsCompanion extends UpdateCompanion<RunTarget> {
  final Value<int> id;
  final Value<String> runId;
  final Value<String> url;
  final Value<String?> role;
  const RunTargetsCompanion({
    this.id = const Value.absent(),
    this.runId = const Value.absent(),
    this.url = const Value.absent(),
    this.role = const Value.absent(),
  });
  RunTargetsCompanion.insert({
    this.id = const Value.absent(),
    required String runId,
    required String url,
    this.role = const Value.absent(),
  }) : runId = Value(runId),
       url = Value(url);
  static Insertable<RunTarget> custom({
    Expression<int>? id,
    Expression<String>? runId,
    Expression<String>? url,
    Expression<String>? role,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (runId != null) 'run_id': runId,
      if (url != null) 'url': url,
      if (role != null) 'role': role,
    });
  }

  RunTargetsCompanion copyWith({
    Value<int>? id,
    Value<String>? runId,
    Value<String>? url,
    Value<String?>? role,
  }) {
    return RunTargetsCompanion(
      id: id ?? this.id,
      runId: runId ?? this.runId,
      url: url ?? this.url,
      role: role ?? this.role,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (runId.present) {
      map['run_id'] = Variable<String>(runId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RunTargetsCompanion(')
          ..write('id: $id, ')
          ..write('runId: $runId, ')
          ..write('url: $url, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }
}

class $RunStepsTable extends RunSteps with TableInfo<$RunStepsTable, RunStep> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RunStepsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _runIdMeta = const VerificationMeta('runId');
  @override
  late final GeneratedColumn<String> runId = GeneratedColumn<String>(
    'run_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES runs (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stepIndexMeta = const VerificationMeta(
    'stepIndex',
  );
  @override
  late final GeneratedColumn<int> stepIndex = GeneratedColumn<int>(
    'step_index',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _actionMeta = const VerificationMeta('action');
  @override
  late final GeneratedColumn<String> action = GeneratedColumn<String>(
    'action',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _durationMsMeta = const VerificationMeta(
    'durationMs',
  );
  @override
  late final GeneratedColumn<int> durationMs = GeneratedColumn<int>(
    'duration_ms',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _errorMeta = const VerificationMeta('error');
  @override
  late final GeneratedColumn<String> error = GeneratedColumn<String>(
    'error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetMeta = const VerificationMeta('target');
  @override
  late final GeneratedColumn<String> target = GeneratedColumn<String>(
    'target',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _screenshotPathMeta = const VerificationMeta(
    'screenshotPath',
  );
  @override
  late final GeneratedColumn<String> screenshotPath = GeneratedColumn<String>(
    'screenshot_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetIndexMeta = const VerificationMeta(
    'targetIndex',
  );
  @override
  late final GeneratedColumn<int> targetIndex = GeneratedColumn<int>(
    'target_index',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    runId,
    type,
    stepIndex,
    action,
    description,
    status,
    durationMs,
    error,
    target,
    value,
    screenshotPath,
    targetIndex,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'run_steps';
  @override
  VerificationContext validateIntegrity(
    Insertable<RunStep> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('run_id')) {
      context.handle(
        _runIdMeta,
        runId.isAcceptableOrUnknown(data['run_id']!, _runIdMeta),
      );
    } else if (isInserting) {
      context.missing(_runIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    }
    if (data.containsKey('step_index')) {
      context.handle(
        _stepIndexMeta,
        stepIndex.isAcceptableOrUnknown(data['step_index']!, _stepIndexMeta),
      );
    }
    if (data.containsKey('action')) {
      context.handle(
        _actionMeta,
        action.isAcceptableOrUnknown(data['action']!, _actionMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('duration_ms')) {
      context.handle(
        _durationMsMeta,
        durationMs.isAcceptableOrUnknown(data['duration_ms']!, _durationMsMeta),
      );
    }
    if (data.containsKey('error')) {
      context.handle(
        _errorMeta,
        error.isAcceptableOrUnknown(data['error']!, _errorMeta),
      );
    }
    if (data.containsKey('target')) {
      context.handle(
        _targetMeta,
        target.isAcceptableOrUnknown(data['target']!, _targetMeta),
      );
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    }
    if (data.containsKey('screenshot_path')) {
      context.handle(
        _screenshotPathMeta,
        screenshotPath.isAcceptableOrUnknown(
          data['screenshot_path']!,
          _screenshotPathMeta,
        ),
      );
    }
    if (data.containsKey('target_index')) {
      context.handle(
        _targetIndexMeta,
        targetIndex.isAcceptableOrUnknown(
          data['target_index']!,
          _targetIndexMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RunStep map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RunStep(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      runId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}run_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      ),
      stepIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_index'],
      ),
      action: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}action'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      durationMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_ms'],
      ),
      error: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}error'],
      ),
      target: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}target'],
      ),
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      ),
      screenshotPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}screenshot_path'],
      ),
      targetIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target_index'],
      ),
    );
  }

  @override
  $RunStepsTable createAlias(String alias) {
    return $RunStepsTable(attachedDatabase, alias);
  }
}

class RunStep extends DataClass implements Insertable<RunStep> {
  final int id;
  final String runId;
  final String? type;
  final int? stepIndex;
  final String? action;
  final String? description;
  final String? status;
  final int? durationMs;
  final String? error;
  final String? target;
  final String? value;
  final String? screenshotPath;
  final int? targetIndex;
  const RunStep({
    required this.id,
    required this.runId,
    this.type,
    this.stepIndex,
    this.action,
    this.description,
    this.status,
    this.durationMs,
    this.error,
    this.target,
    this.value,
    this.screenshotPath,
    this.targetIndex,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['run_id'] = Variable<String>(runId);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || stepIndex != null) {
      map['step_index'] = Variable<int>(stepIndex);
    }
    if (!nullToAbsent || action != null) {
      map['action'] = Variable<String>(action);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    if (!nullToAbsent || durationMs != null) {
      map['duration_ms'] = Variable<int>(durationMs);
    }
    if (!nullToAbsent || error != null) {
      map['error'] = Variable<String>(error);
    }
    if (!nullToAbsent || target != null) {
      map['target'] = Variable<String>(target);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    if (!nullToAbsent || screenshotPath != null) {
      map['screenshot_path'] = Variable<String>(screenshotPath);
    }
    if (!nullToAbsent || targetIndex != null) {
      map['target_index'] = Variable<int>(targetIndex);
    }
    return map;
  }

  RunStepsCompanion toCompanion(bool nullToAbsent) {
    return RunStepsCompanion(
      id: Value(id),
      runId: Value(runId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      stepIndex: stepIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(stepIndex),
      action: action == null && nullToAbsent
          ? const Value.absent()
          : Value(action),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      durationMs: durationMs == null && nullToAbsent
          ? const Value.absent()
          : Value(durationMs),
      error: error == null && nullToAbsent
          ? const Value.absent()
          : Value(error),
      target: target == null && nullToAbsent
          ? const Value.absent()
          : Value(target),
      value: value == null && nullToAbsent
          ? const Value.absent()
          : Value(value),
      screenshotPath: screenshotPath == null && nullToAbsent
          ? const Value.absent()
          : Value(screenshotPath),
      targetIndex: targetIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(targetIndex),
    );
  }

  factory RunStep.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RunStep(
      id: serializer.fromJson<int>(json['id']),
      runId: serializer.fromJson<String>(json['runId']),
      type: serializer.fromJson<String?>(json['type']),
      stepIndex: serializer.fromJson<int?>(json['stepIndex']),
      action: serializer.fromJson<String?>(json['action']),
      description: serializer.fromJson<String?>(json['description']),
      status: serializer.fromJson<String?>(json['status']),
      durationMs: serializer.fromJson<int?>(json['durationMs']),
      error: serializer.fromJson<String?>(json['error']),
      target: serializer.fromJson<String?>(json['target']),
      value: serializer.fromJson<String?>(json['value']),
      screenshotPath: serializer.fromJson<String?>(json['screenshotPath']),
      targetIndex: serializer.fromJson<int?>(json['targetIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'runId': serializer.toJson<String>(runId),
      'type': serializer.toJson<String?>(type),
      'stepIndex': serializer.toJson<int?>(stepIndex),
      'action': serializer.toJson<String?>(action),
      'description': serializer.toJson<String?>(description),
      'status': serializer.toJson<String?>(status),
      'durationMs': serializer.toJson<int?>(durationMs),
      'error': serializer.toJson<String?>(error),
      'target': serializer.toJson<String?>(target),
      'value': serializer.toJson<String?>(value),
      'screenshotPath': serializer.toJson<String?>(screenshotPath),
      'targetIndex': serializer.toJson<int?>(targetIndex),
    };
  }

  RunStep copyWith({
    int? id,
    String? runId,
    Value<String?> type = const Value.absent(),
    Value<int?> stepIndex = const Value.absent(),
    Value<String?> action = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> status = const Value.absent(),
    Value<int?> durationMs = const Value.absent(),
    Value<String?> error = const Value.absent(),
    Value<String?> target = const Value.absent(),
    Value<String?> value = const Value.absent(),
    Value<String?> screenshotPath = const Value.absent(),
    Value<int?> targetIndex = const Value.absent(),
  }) => RunStep(
    id: id ?? this.id,
    runId: runId ?? this.runId,
    type: type.present ? type.value : this.type,
    stepIndex: stepIndex.present ? stepIndex.value : this.stepIndex,
    action: action.present ? action.value : this.action,
    description: description.present ? description.value : this.description,
    status: status.present ? status.value : this.status,
    durationMs: durationMs.present ? durationMs.value : this.durationMs,
    error: error.present ? error.value : this.error,
    target: target.present ? target.value : this.target,
    value: value.present ? value.value : this.value,
    screenshotPath: screenshotPath.present
        ? screenshotPath.value
        : this.screenshotPath,
    targetIndex: targetIndex.present ? targetIndex.value : this.targetIndex,
  );
  RunStep copyWithCompanion(RunStepsCompanion data) {
    return RunStep(
      id: data.id.present ? data.id.value : this.id,
      runId: data.runId.present ? data.runId.value : this.runId,
      type: data.type.present ? data.type.value : this.type,
      stepIndex: data.stepIndex.present ? data.stepIndex.value : this.stepIndex,
      action: data.action.present ? data.action.value : this.action,
      description: data.description.present
          ? data.description.value
          : this.description,
      status: data.status.present ? data.status.value : this.status,
      durationMs: data.durationMs.present
          ? data.durationMs.value
          : this.durationMs,
      error: data.error.present ? data.error.value : this.error,
      target: data.target.present ? data.target.value : this.target,
      value: data.value.present ? data.value.value : this.value,
      screenshotPath: data.screenshotPath.present
          ? data.screenshotPath.value
          : this.screenshotPath,
      targetIndex: data.targetIndex.present
          ? data.targetIndex.value
          : this.targetIndex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RunStep(')
          ..write('id: $id, ')
          ..write('runId: $runId, ')
          ..write('type: $type, ')
          ..write('stepIndex: $stepIndex, ')
          ..write('action: $action, ')
          ..write('description: $description, ')
          ..write('status: $status, ')
          ..write('durationMs: $durationMs, ')
          ..write('error: $error, ')
          ..write('target: $target, ')
          ..write('value: $value, ')
          ..write('screenshotPath: $screenshotPath, ')
          ..write('targetIndex: $targetIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    runId,
    type,
    stepIndex,
    action,
    description,
    status,
    durationMs,
    error,
    target,
    value,
    screenshotPath,
    targetIndex,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RunStep &&
          other.id == this.id &&
          other.runId == this.runId &&
          other.type == this.type &&
          other.stepIndex == this.stepIndex &&
          other.action == this.action &&
          other.description == this.description &&
          other.status == this.status &&
          other.durationMs == this.durationMs &&
          other.error == this.error &&
          other.target == this.target &&
          other.value == this.value &&
          other.screenshotPath == this.screenshotPath &&
          other.targetIndex == this.targetIndex);
}

class RunStepsCompanion extends UpdateCompanion<RunStep> {
  final Value<int> id;
  final Value<String> runId;
  final Value<String?> type;
  final Value<int?> stepIndex;
  final Value<String?> action;
  final Value<String?> description;
  final Value<String?> status;
  final Value<int?> durationMs;
  final Value<String?> error;
  final Value<String?> target;
  final Value<String?> value;
  final Value<String?> screenshotPath;
  final Value<int?> targetIndex;
  const RunStepsCompanion({
    this.id = const Value.absent(),
    this.runId = const Value.absent(),
    this.type = const Value.absent(),
    this.stepIndex = const Value.absent(),
    this.action = const Value.absent(),
    this.description = const Value.absent(),
    this.status = const Value.absent(),
    this.durationMs = const Value.absent(),
    this.error = const Value.absent(),
    this.target = const Value.absent(),
    this.value = const Value.absent(),
    this.screenshotPath = const Value.absent(),
    this.targetIndex = const Value.absent(),
  });
  RunStepsCompanion.insert({
    this.id = const Value.absent(),
    required String runId,
    this.type = const Value.absent(),
    this.stepIndex = const Value.absent(),
    this.action = const Value.absent(),
    this.description = const Value.absent(),
    this.status = const Value.absent(),
    this.durationMs = const Value.absent(),
    this.error = const Value.absent(),
    this.target = const Value.absent(),
    this.value = const Value.absent(),
    this.screenshotPath = const Value.absent(),
    this.targetIndex = const Value.absent(),
  }) : runId = Value(runId);
  static Insertable<RunStep> custom({
    Expression<int>? id,
    Expression<String>? runId,
    Expression<String>? type,
    Expression<int>? stepIndex,
    Expression<String>? action,
    Expression<String>? description,
    Expression<String>? status,
    Expression<int>? durationMs,
    Expression<String>? error,
    Expression<String>? target,
    Expression<String>? value,
    Expression<String>? screenshotPath,
    Expression<int>? targetIndex,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (runId != null) 'run_id': runId,
      if (type != null) 'type': type,
      if (stepIndex != null) 'step_index': stepIndex,
      if (action != null) 'action': action,
      if (description != null) 'description': description,
      if (status != null) 'status': status,
      if (durationMs != null) 'duration_ms': durationMs,
      if (error != null) 'error': error,
      if (target != null) 'target': target,
      if (value != null) 'value': value,
      if (screenshotPath != null) 'screenshot_path': screenshotPath,
      if (targetIndex != null) 'target_index': targetIndex,
    });
  }

  RunStepsCompanion copyWith({
    Value<int>? id,
    Value<String>? runId,
    Value<String?>? type,
    Value<int?>? stepIndex,
    Value<String?>? action,
    Value<String?>? description,
    Value<String?>? status,
    Value<int?>? durationMs,
    Value<String?>? error,
    Value<String?>? target,
    Value<String?>? value,
    Value<String?>? screenshotPath,
    Value<int?>? targetIndex,
  }) {
    return RunStepsCompanion(
      id: id ?? this.id,
      runId: runId ?? this.runId,
      type: type ?? this.type,
      stepIndex: stepIndex ?? this.stepIndex,
      action: action ?? this.action,
      description: description ?? this.description,
      status: status ?? this.status,
      durationMs: durationMs ?? this.durationMs,
      error: error ?? this.error,
      target: target ?? this.target,
      value: value ?? this.value,
      screenshotPath: screenshotPath ?? this.screenshotPath,
      targetIndex: targetIndex ?? this.targetIndex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (runId.present) {
      map['run_id'] = Variable<String>(runId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (stepIndex.present) {
      map['step_index'] = Variable<int>(stepIndex.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (durationMs.present) {
      map['duration_ms'] = Variable<int>(durationMs.value);
    }
    if (error.present) {
      map['error'] = Variable<String>(error.value);
    }
    if (target.present) {
      map['target'] = Variable<String>(target.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (screenshotPath.present) {
      map['screenshot_path'] = Variable<String>(screenshotPath.value);
    }
    if (targetIndex.present) {
      map['target_index'] = Variable<int>(targetIndex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RunStepsCompanion(')
          ..write('id: $id, ')
          ..write('runId: $runId, ')
          ..write('type: $type, ')
          ..write('stepIndex: $stepIndex, ')
          ..write('action: $action, ')
          ..write('description: $description, ')
          ..write('status: $status, ')
          ..write('durationMs: $durationMs, ')
          ..write('error: $error, ')
          ..write('target: $target, ')
          ..write('value: $value, ')
          ..write('screenshotPath: $screenshotPath, ')
          ..write('targetIndex: $targetIndex')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProjectsTable projects = $ProjectsTable(this);
  late final $RunsTable runs = $RunsTable(this);
  late final $RunTargetsTable runTargets = $RunTargetsTable(this);
  late final $RunStepsTable runSteps = $RunStepsTable(this);
  late final Index idxRunsProjectId = Index(
    'idx_runs_project_id',
    'CREATE INDEX idx_runs_project_id ON runs (project_id)',
  );
  late final Index idxRunTargetsRunId = Index(
    'idx_run_targets_run_id',
    'CREATE INDEX idx_run_targets_run_id ON run_targets (run_id)',
  );
  late final Index idxRunStepsRunId = Index(
    'idx_run_steps_run_id',
    'CREATE INDEX idx_run_steps_run_id ON run_steps (run_id)',
  );
  late final ProjectsDao projectsDao = ProjectsDao(this as AppDatabase);
  late final RunsDao runsDao = RunsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    projects,
    runs,
    runTargets,
    runSteps,
    idxRunsProjectId,
    idxRunTargetsRunId,
    idxRunStepsRunId,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'projects',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('runs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'runs',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('run_targets', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'runs',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('run_steps', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$ProjectsTableCreateCompanionBuilder =
    ProjectsCompanion Function({
      required String id,
      required String name,
      Value<String?> description,
      Value<int> runsCount,
      required DateTime lastRunDate,
      Value<String?> userId,
      required DateTime cachedAt,
      Value<int> rowid,
    });
typedef $$ProjectsTableUpdateCompanionBuilder =
    ProjectsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> description,
      Value<int> runsCount,
      Value<DateTime> lastRunDate,
      Value<String?> userId,
      Value<DateTime> cachedAt,
      Value<int> rowid,
    });

final class $$ProjectsTableReferences
    extends BaseReferences<_$AppDatabase, $ProjectsTable, Project> {
  $$ProjectsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RunsTable, List<Run>> _runsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.runs,
    aliasName: 'projects__id__runs__project_id',
  );

  $$RunsTableProcessedTableManager get runsRefs {
    final manager = $$RunsTableTableManager(
      $_db,
      $_db.runs,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_runsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProjectsTableFilterComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get runsCount => $composableBuilder(
    column: $table.runsCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastRunDate => $composableBuilder(
    column: $table.lastRunDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> runsRefs(
    Expression<bool> Function($$RunsTableFilterComposer f) f,
  ) {
    final $$RunsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableFilterComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProjectsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get runsCount => $composableBuilder(
    column: $table.runsCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastRunDate => $composableBuilder(
    column: $table.lastRunDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProjectsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get runsCount =>
      $composableBuilder(column: $table.runsCount, builder: (column) => column);

  GeneratedColumn<DateTime> get lastRunDate => $composableBuilder(
    column: $table.lastRunDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);

  Expression<T> runsRefs<T extends Object>(
    Expression<T> Function($$RunsTableAnnotationComposer a) f,
  ) {
    final $$RunsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableAnnotationComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProjectsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProjectsTable,
          Project,
          $$ProjectsTableFilterComposer,
          $$ProjectsTableOrderingComposer,
          $$ProjectsTableAnnotationComposer,
          $$ProjectsTableCreateCompanionBuilder,
          $$ProjectsTableUpdateCompanionBuilder,
          (Project, $$ProjectsTableReferences),
          Project,
          PrefetchHooks Function({bool runsRefs})
        > {
  $$ProjectsTableTableManager(_$AppDatabase db, $ProjectsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProjectsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProjectsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProjectsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> runsCount = const Value.absent(),
                Value<DateTime> lastRunDate = const Value.absent(),
                Value<String?> userId = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProjectsCompanion(
                id: id,
                name: name,
                description: description,
                runsCount: runsCount,
                lastRunDate: lastRunDate,
                userId: userId,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> description = const Value.absent(),
                Value<int> runsCount = const Value.absent(),
                required DateTime lastRunDate,
                Value<String?> userId = const Value.absent(),
                required DateTime cachedAt,
                Value<int> rowid = const Value.absent(),
              }) => ProjectsCompanion.insert(
                id: id,
                name: name,
                description: description,
                runsCount: runsCount,
                lastRunDate: lastRunDate,
                userId: userId,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProjectsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({runsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (runsRefs) db.runs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (runsRefs)
                    await $_getPrefetchedData<Project, $ProjectsTable, Run>(
                      currentTable: table,
                      referencedTable: $$ProjectsTableReferences._runsRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$ProjectsTableReferences(db, table, p0).runsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.projectId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ProjectsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProjectsTable,
      Project,
      $$ProjectsTableFilterComposer,
      $$ProjectsTableOrderingComposer,
      $$ProjectsTableAnnotationComposer,
      $$ProjectsTableCreateCompanionBuilder,
      $$ProjectsTableUpdateCompanionBuilder,
      (Project, $$ProjectsTableReferences),
      Project,
      PrefetchHooks Function({bool runsRefs})
    >;
typedef $$RunsTableCreateCompanionBuilder =
    RunsCompanion Function({
      required String id,
      Value<String?> projectId,
      required String story,
      required String url,
      required DateTime createdAt,
      required String overallStatus,
      Value<bool?> goalAchieved,
      Value<int?> totalDurationMs,
      Value<int?> passed,
      Value<int?> failed,
      Value<String?> summary,
      Value<bool?> canceled,
      Value<String?> cancelReason,
      Value<bool?> paused,
      Value<String?> pauseCheckpointJson,
      Value<String?> executionMode,
      required DateTime cachedAt,
      Value<int> rowid,
    });
typedef $$RunsTableUpdateCompanionBuilder =
    RunsCompanion Function({
      Value<String> id,
      Value<String?> projectId,
      Value<String> story,
      Value<String> url,
      Value<DateTime> createdAt,
      Value<String> overallStatus,
      Value<bool?> goalAchieved,
      Value<int?> totalDurationMs,
      Value<int?> passed,
      Value<int?> failed,
      Value<String?> summary,
      Value<bool?> canceled,
      Value<String?> cancelReason,
      Value<bool?> paused,
      Value<String?> pauseCheckpointJson,
      Value<String?> executionMode,
      Value<DateTime> cachedAt,
      Value<int> rowid,
    });

final class $$RunsTableReferences
    extends BaseReferences<_$AppDatabase, $RunsTable, Run> {
  $$RunsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectsTable _projectIdTable(_$AppDatabase db) =>
      db.projects.createAlias('runs__project_id__projects__id');

  $$ProjectsTableProcessedTableManager? get projectId {
    final $_column = $_itemColumn<String>('project_id');
    if ($_column == null) return null;
    final manager = $$ProjectsTableTableManager(
      $_db,
      $_db.projects,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$RunTargetsTable, List<RunTarget>>
  _runTargetsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.runTargets,
    aliasName: 'runs__id__run_targets__run_id',
  );

  $$RunTargetsTableProcessedTableManager get runTargetsRefs {
    final manager = $$RunTargetsTableTableManager(
      $_db,
      $_db.runTargets,
    ).filter((f) => f.runId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_runTargetsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RunStepsTable, List<RunStep>> _runStepsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.runSteps,
    aliasName: 'runs__id__run_steps__run_id',
  );

  $$RunStepsTableProcessedTableManager get runStepsRefs {
    final manager = $$RunStepsTableTableManager(
      $_db,
      $_db.runSteps,
    ).filter((f) => f.runId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_runStepsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RunsTableFilterComposer extends Composer<_$AppDatabase, $RunsTable> {
  $$RunsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get story => $composableBuilder(
    column: $table.story,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get overallStatus => $composableBuilder(
    column: $table.overallStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get goalAchieved => $composableBuilder(
    column: $table.goalAchieved,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalDurationMs => $composableBuilder(
    column: $table.totalDurationMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get passed => $composableBuilder(
    column: $table.passed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get failed => $composableBuilder(
    column: $table.failed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get canceled => $composableBuilder(
    column: $table.canceled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cancelReason => $composableBuilder(
    column: $table.cancelReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get paused => $composableBuilder(
    column: $table.paused,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pauseCheckpointJson => $composableBuilder(
    column: $table.pauseCheckpointJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get executionMode => $composableBuilder(
    column: $table.executionMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectsTableFilterComposer get projectId {
    final $$ProjectsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableFilterComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> runTargetsRefs(
    Expression<bool> Function($$RunTargetsTableFilterComposer f) f,
  ) {
    final $$RunTargetsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.runTargets,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunTargetsTableFilterComposer(
            $db: $db,
            $table: $db.runTargets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> runStepsRefs(
    Expression<bool> Function($$RunStepsTableFilterComposer f) f,
  ) {
    final $$RunStepsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.runSteps,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunStepsTableFilterComposer(
            $db: $db,
            $table: $db.runSteps,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RunsTableOrderingComposer extends Composer<_$AppDatabase, $RunsTable> {
  $$RunsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get story => $composableBuilder(
    column: $table.story,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get overallStatus => $composableBuilder(
    column: $table.overallStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get goalAchieved => $composableBuilder(
    column: $table.goalAchieved,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalDurationMs => $composableBuilder(
    column: $table.totalDurationMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get passed => $composableBuilder(
    column: $table.passed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get failed => $composableBuilder(
    column: $table.failed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get canceled => $composableBuilder(
    column: $table.canceled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cancelReason => $composableBuilder(
    column: $table.cancelReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get paused => $composableBuilder(
    column: $table.paused,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pauseCheckpointJson => $composableBuilder(
    column: $table.pauseCheckpointJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get executionMode => $composableBuilder(
    column: $table.executionMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectsTableOrderingComposer get projectId {
    final $$ProjectsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableOrderingComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RunsTable> {
  $$RunsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get story =>
      $composableBuilder(column: $table.story, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get overallStatus => $composableBuilder(
    column: $table.overallStatus,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get goalAchieved => $composableBuilder(
    column: $table.goalAchieved,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalDurationMs => $composableBuilder(
    column: $table.totalDurationMs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get passed =>
      $composableBuilder(column: $table.passed, builder: (column) => column);

  GeneratedColumn<int> get failed =>
      $composableBuilder(column: $table.failed, builder: (column) => column);

  GeneratedColumn<String> get summary =>
      $composableBuilder(column: $table.summary, builder: (column) => column);

  GeneratedColumn<bool> get canceled =>
      $composableBuilder(column: $table.canceled, builder: (column) => column);

  GeneratedColumn<String> get cancelReason => $composableBuilder(
    column: $table.cancelReason,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get paused =>
      $composableBuilder(column: $table.paused, builder: (column) => column);

  GeneratedColumn<String> get pauseCheckpointJson => $composableBuilder(
    column: $table.pauseCheckpointJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get executionMode => $composableBuilder(
    column: $table.executionMode,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);

  $$ProjectsTableAnnotationComposer get projectId {
    final $$ProjectsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.projects,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectsTableAnnotationComposer(
            $db: $db,
            $table: $db.projects,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> runTargetsRefs<T extends Object>(
    Expression<T> Function($$RunTargetsTableAnnotationComposer a) f,
  ) {
    final $$RunTargetsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.runTargets,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunTargetsTableAnnotationComposer(
            $db: $db,
            $table: $db.runTargets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> runStepsRefs<T extends Object>(
    Expression<T> Function($$RunStepsTableAnnotationComposer a) f,
  ) {
    final $$RunStepsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.runSteps,
      getReferencedColumn: (t) => t.runId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunStepsTableAnnotationComposer(
            $db: $db,
            $table: $db.runSteps,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RunsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RunsTable,
          Run,
          $$RunsTableFilterComposer,
          $$RunsTableOrderingComposer,
          $$RunsTableAnnotationComposer,
          $$RunsTableCreateCompanionBuilder,
          $$RunsTableUpdateCompanionBuilder,
          (Run, $$RunsTableReferences),
          Run,
          PrefetchHooks Function({
            bool projectId,
            bool runTargetsRefs,
            bool runStepsRefs,
          })
        > {
  $$RunsTableTableManager(_$AppDatabase db, $RunsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RunsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RunsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RunsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String> story = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> overallStatus = const Value.absent(),
                Value<bool?> goalAchieved = const Value.absent(),
                Value<int?> totalDurationMs = const Value.absent(),
                Value<int?> passed = const Value.absent(),
                Value<int?> failed = const Value.absent(),
                Value<String?> summary = const Value.absent(),
                Value<bool?> canceled = const Value.absent(),
                Value<String?> cancelReason = const Value.absent(),
                Value<bool?> paused = const Value.absent(),
                Value<String?> pauseCheckpointJson = const Value.absent(),
                Value<String?> executionMode = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RunsCompanion(
                id: id,
                projectId: projectId,
                story: story,
                url: url,
                createdAt: createdAt,
                overallStatus: overallStatus,
                goalAchieved: goalAchieved,
                totalDurationMs: totalDurationMs,
                passed: passed,
                failed: failed,
                summary: summary,
                canceled: canceled,
                cancelReason: cancelReason,
                paused: paused,
                pauseCheckpointJson: pauseCheckpointJson,
                executionMode: executionMode,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> projectId = const Value.absent(),
                required String story,
                required String url,
                required DateTime createdAt,
                required String overallStatus,
                Value<bool?> goalAchieved = const Value.absent(),
                Value<int?> totalDurationMs = const Value.absent(),
                Value<int?> passed = const Value.absent(),
                Value<int?> failed = const Value.absent(),
                Value<String?> summary = const Value.absent(),
                Value<bool?> canceled = const Value.absent(),
                Value<String?> cancelReason = const Value.absent(),
                Value<bool?> paused = const Value.absent(),
                Value<String?> pauseCheckpointJson = const Value.absent(),
                Value<String?> executionMode = const Value.absent(),
                required DateTime cachedAt,
                Value<int> rowid = const Value.absent(),
              }) => RunsCompanion.insert(
                id: id,
                projectId: projectId,
                story: story,
                url: url,
                createdAt: createdAt,
                overallStatus: overallStatus,
                goalAchieved: goalAchieved,
                totalDurationMs: totalDurationMs,
                passed: passed,
                failed: failed,
                summary: summary,
                canceled: canceled,
                cancelReason: cancelReason,
                paused: paused,
                pauseCheckpointJson: pauseCheckpointJson,
                executionMode: executionMode,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$RunsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                projectId = false,
                runTargetsRefs = false,
                runStepsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (runTargetsRefs) db.runTargets,
                    if (runStepsRefs) db.runSteps,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable: $$RunsTableReferences
                                        ._projectIdTable(db),
                                    referencedColumn: $$RunsTableReferences
                                        ._projectIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (runTargetsRefs)
                        await $_getPrefetchedData<Run, $RunsTable, RunTarget>(
                          currentTable: table,
                          referencedTable: $$RunsTableReferences
                              ._runTargetsRefsTable(db),
                          managerFromTypedResult: (p0) => $$RunsTableReferences(
                            db,
                            table,
                            p0,
                          ).runTargetsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.runId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (runStepsRefs)
                        await $_getPrefetchedData<Run, $RunsTable, RunStep>(
                          currentTable: table,
                          referencedTable: $$RunsTableReferences
                              ._runStepsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RunsTableReferences(db, table, p0).runStepsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.runId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RunsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RunsTable,
      Run,
      $$RunsTableFilterComposer,
      $$RunsTableOrderingComposer,
      $$RunsTableAnnotationComposer,
      $$RunsTableCreateCompanionBuilder,
      $$RunsTableUpdateCompanionBuilder,
      (Run, $$RunsTableReferences),
      Run,
      PrefetchHooks Function({
        bool projectId,
        bool runTargetsRefs,
        bool runStepsRefs,
      })
    >;
typedef $$RunTargetsTableCreateCompanionBuilder =
    RunTargetsCompanion Function({
      Value<int> id,
      required String runId,
      required String url,
      Value<String?> role,
    });
typedef $$RunTargetsTableUpdateCompanionBuilder =
    RunTargetsCompanion Function({
      Value<int> id,
      Value<String> runId,
      Value<String> url,
      Value<String?> role,
    });

final class $$RunTargetsTableReferences
    extends BaseReferences<_$AppDatabase, $RunTargetsTable, RunTarget> {
  $$RunTargetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RunsTable _runIdTable(_$AppDatabase db) =>
      db.runs.createAlias('run_targets__run_id__runs__id');

  $$RunsTableProcessedTableManager get runId {
    final $_column = $_itemColumn<String>('run_id')!;

    final manager = $$RunsTableTableManager(
      $_db,
      $_db.runs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_runIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RunTargetsTableFilterComposer
    extends Composer<_$AppDatabase, $RunTargetsTable> {
  $$RunTargetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  $$RunsTableFilterComposer get runId {
    final $$RunsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableFilterComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunTargetsTableOrderingComposer
    extends Composer<_$AppDatabase, $RunTargetsTable> {
  $$RunTargetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  $$RunsTableOrderingComposer get runId {
    final $$RunsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableOrderingComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunTargetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RunTargetsTable> {
  $$RunTargetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  $$RunsTableAnnotationComposer get runId {
    final $$RunsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableAnnotationComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunTargetsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RunTargetsTable,
          RunTarget,
          $$RunTargetsTableFilterComposer,
          $$RunTargetsTableOrderingComposer,
          $$RunTargetsTableAnnotationComposer,
          $$RunTargetsTableCreateCompanionBuilder,
          $$RunTargetsTableUpdateCompanionBuilder,
          (RunTarget, $$RunTargetsTableReferences),
          RunTarget,
          PrefetchHooks Function({bool runId})
        > {
  $$RunTargetsTableTableManager(_$AppDatabase db, $RunTargetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RunTargetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RunTargetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RunTargetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> runId = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String?> role = const Value.absent(),
              }) => RunTargetsCompanion(
                id: id,
                runId: runId,
                url: url,
                role: role,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String runId,
                required String url,
                Value<String?> role = const Value.absent(),
              }) => RunTargetsCompanion.insert(
                id: id,
                runId: runId,
                url: url,
                role: role,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RunTargetsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({runId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (runId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.runId,
                                referencedTable: $$RunTargetsTableReferences
                                    ._runIdTable(db),
                                referencedColumn: $$RunTargetsTableReferences
                                    ._runIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RunTargetsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RunTargetsTable,
      RunTarget,
      $$RunTargetsTableFilterComposer,
      $$RunTargetsTableOrderingComposer,
      $$RunTargetsTableAnnotationComposer,
      $$RunTargetsTableCreateCompanionBuilder,
      $$RunTargetsTableUpdateCompanionBuilder,
      (RunTarget, $$RunTargetsTableReferences),
      RunTarget,
      PrefetchHooks Function({bool runId})
    >;
typedef $$RunStepsTableCreateCompanionBuilder =
    RunStepsCompanion Function({
      Value<int> id,
      required String runId,
      Value<String?> type,
      Value<int?> stepIndex,
      Value<String?> action,
      Value<String?> description,
      Value<String?> status,
      Value<int?> durationMs,
      Value<String?> error,
      Value<String?> target,
      Value<String?> value,
      Value<String?> screenshotPath,
      Value<int?> targetIndex,
    });
typedef $$RunStepsTableUpdateCompanionBuilder =
    RunStepsCompanion Function({
      Value<int> id,
      Value<String> runId,
      Value<String?> type,
      Value<int?> stepIndex,
      Value<String?> action,
      Value<String?> description,
      Value<String?> status,
      Value<int?> durationMs,
      Value<String?> error,
      Value<String?> target,
      Value<String?> value,
      Value<String?> screenshotPath,
      Value<int?> targetIndex,
    });

final class $$RunStepsTableReferences
    extends BaseReferences<_$AppDatabase, $RunStepsTable, RunStep> {
  $$RunStepsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RunsTable _runIdTable(_$AppDatabase db) =>
      db.runs.createAlias('run_steps__run_id__runs__id');

  $$RunsTableProcessedTableManager get runId {
    final $_column = $_itemColumn<String>('run_id')!;

    final manager = $$RunsTableTableManager(
      $_db,
      $_db.runs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_runIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RunStepsTableFilterComposer
    extends Composer<_$AppDatabase, $RunStepsTable> {
  $$RunStepsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stepIndex => $composableBuilder(
    column: $table.stepIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationMs => $composableBuilder(
    column: $table.durationMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get error => $composableBuilder(
    column: $table.error,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get screenshotPath => $composableBuilder(
    column: $table.screenshotPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get targetIndex => $composableBuilder(
    column: $table.targetIndex,
    builder: (column) => ColumnFilters(column),
  );

  $$RunsTableFilterComposer get runId {
    final $$RunsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableFilterComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunStepsTableOrderingComposer
    extends Composer<_$AppDatabase, $RunStepsTable> {
  $$RunStepsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stepIndex => $composableBuilder(
    column: $table.stepIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationMs => $composableBuilder(
    column: $table.durationMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get error => $composableBuilder(
    column: $table.error,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get screenshotPath => $composableBuilder(
    column: $table.screenshotPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get targetIndex => $composableBuilder(
    column: $table.targetIndex,
    builder: (column) => ColumnOrderings(column),
  );

  $$RunsTableOrderingComposer get runId {
    final $$RunsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableOrderingComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunStepsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RunStepsTable> {
  $$RunStepsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get stepIndex =>
      $composableBuilder(column: $table.stepIndex, builder: (column) => column);

  GeneratedColumn<String> get action =>
      $composableBuilder(column: $table.action, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get durationMs => $composableBuilder(
    column: $table.durationMs,
    builder: (column) => column,
  );

  GeneratedColumn<String> get error =>
      $composableBuilder(column: $table.error, builder: (column) => column);

  GeneratedColumn<String> get target =>
      $composableBuilder(column: $table.target, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get screenshotPath => $composableBuilder(
    column: $table.screenshotPath,
    builder: (column) => column,
  );

  GeneratedColumn<int> get targetIndex => $composableBuilder(
    column: $table.targetIndex,
    builder: (column) => column,
  );

  $$RunsTableAnnotationComposer get runId {
    final $$RunsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.runId,
      referencedTable: $db.runs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RunsTableAnnotationComposer(
            $db: $db,
            $table: $db.runs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RunStepsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RunStepsTable,
          RunStep,
          $$RunStepsTableFilterComposer,
          $$RunStepsTableOrderingComposer,
          $$RunStepsTableAnnotationComposer,
          $$RunStepsTableCreateCompanionBuilder,
          $$RunStepsTableUpdateCompanionBuilder,
          (RunStep, $$RunStepsTableReferences),
          RunStep,
          PrefetchHooks Function({bool runId})
        > {
  $$RunStepsTableTableManager(_$AppDatabase db, $RunStepsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RunStepsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RunStepsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RunStepsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> runId = const Value.absent(),
                Value<String?> type = const Value.absent(),
                Value<int?> stepIndex = const Value.absent(),
                Value<String?> action = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<int?> durationMs = const Value.absent(),
                Value<String?> error = const Value.absent(),
                Value<String?> target = const Value.absent(),
                Value<String?> value = const Value.absent(),
                Value<String?> screenshotPath = const Value.absent(),
                Value<int?> targetIndex = const Value.absent(),
              }) => RunStepsCompanion(
                id: id,
                runId: runId,
                type: type,
                stepIndex: stepIndex,
                action: action,
                description: description,
                status: status,
                durationMs: durationMs,
                error: error,
                target: target,
                value: value,
                screenshotPath: screenshotPath,
                targetIndex: targetIndex,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String runId,
                Value<String?> type = const Value.absent(),
                Value<int?> stepIndex = const Value.absent(),
                Value<String?> action = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<int?> durationMs = const Value.absent(),
                Value<String?> error = const Value.absent(),
                Value<String?> target = const Value.absent(),
                Value<String?> value = const Value.absent(),
                Value<String?> screenshotPath = const Value.absent(),
                Value<int?> targetIndex = const Value.absent(),
              }) => RunStepsCompanion.insert(
                id: id,
                runId: runId,
                type: type,
                stepIndex: stepIndex,
                action: action,
                description: description,
                status: status,
                durationMs: durationMs,
                error: error,
                target: target,
                value: value,
                screenshotPath: screenshotPath,
                targetIndex: targetIndex,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RunStepsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({runId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (runId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.runId,
                                referencedTable: $$RunStepsTableReferences
                                    ._runIdTable(db),
                                referencedColumn: $$RunStepsTableReferences
                                    ._runIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RunStepsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RunStepsTable,
      RunStep,
      $$RunStepsTableFilterComposer,
      $$RunStepsTableOrderingComposer,
      $$RunStepsTableAnnotationComposer,
      $$RunStepsTableCreateCompanionBuilder,
      $$RunStepsTableUpdateCompanionBuilder,
      (RunStep, $$RunStepsTableReferences),
      RunStep,
      PrefetchHooks Function({bool runId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProjectsTableTableManager get projects =>
      $$ProjectsTableTableManager(_db, _db.projects);
  $$RunsTableTableManager get runs => $$RunsTableTableManager(_db, _db.runs);
  $$RunTargetsTableTableManager get runTargets =>
      $$RunTargetsTableTableManager(_db, _db.runTargets);
  $$RunStepsTableTableManager get runSteps =>
      $$RunStepsTableTableManager(_db, _db.runSteps);
}
