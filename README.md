# check-important-files

[한국어](#git-저장소내의-중요한-파일-보여주기)

It tells whether an important file exists between two commits / branches / tags in the git repository 

Usage
---

Add .reviewRequire file which have the pathes of the files you want to check.

.reviewRequire example)
```
restart.sh
build.sbt
conf/
```

- Run check.sh A B (A and B are commits or tags or branch names)

```
sh check.sh  a735115 3c501e6

sh check.sh  v1.1 v1.2-rc
```

If it contains important files between the two commits, show the included file name and ask if you want to show the diff.

```
build.sbt
conf/application.conf.default
conf/messages
conf/messages.ko-KR

Changes detected! Show diff?
1) Yes
2) No
#?
```

[English](#check-important-files)

# Git 저장소내의 중요한 파일 보여주기

Git 저장소에서 중요한 파일이 두 커밋/브랜치/태그 사이에 존재하는지 알려주는 쉘 스크립트

사용법
---
- .reviewRequire 라는 파일에 체크해볼 파일들의 경로를 넣습니다.

.reviewRequire 예)
```
restart.sh
build.sbt
conf/
```

- check.sh을 이용해서 check.sh A B 식으로 실행합니다. (A, B는 커밋해시나 태그/브랜치명)

```
sh check.sh  a735115 3c501e6

sh check.sh  v1.1 v1.2-rc
```

만약 두 커밋사이에 중요 파일이 포함되어 있으면 포함된 파일 이름을 보여주고 diff를 보여줄 것인지 물어봅니다.

```
build.sbt
conf/application.conf.default
conf/messages
conf/messages.ko-KR

Changes detected! Show diff?
1) Yes
2) No
#?
```

