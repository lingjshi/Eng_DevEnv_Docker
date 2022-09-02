# Gitpod tasks usage testing in .gitpod.yaml (https://www.gitpod.io/docs/config-start-tasks)

Three commands (support both single-line and muiltple-lines)

- **before**:  customize the terminal or install global project dependencies
- **init**:  for heavy-lifting tasks - download dependencies, compile source code, run test suite, any other long-running processes …
     (run the time-consuming init tasks continuously behind the scene)
- **command**:   start your database or development server

see .gitpod.yaml for each case
