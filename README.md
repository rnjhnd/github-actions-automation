# GitHub Actions Automation

A simple automation project that tracks GitHub user activity using GitHub Actions workflows. This project demonstrates how to create automated logging and counting systems that run on GitHub's infrastructure.

## 📋 Overview

This project automatically logs GitHub user activity with timestamps and provides a count of all recorded activities. It's useful for:
- Tracking user engagement over time
- Monitoring activity patterns
- Demonstrating GitHub Actions automation capabilities
- Learning about shell scripting in CI/CD environments

## 🚀 Features

- **Automated Logging**: The `log_time.sh` script runs automatically via GitHub Actions
- **User Detection**: Automatically identifies the GitHub user from the Actions context
- **Timestamp Recording**: Each entry includes the exact date and time of execution
- **Activity Counting**: The `count_logs.sh` script provides a summary of all activities

## 📁 Project Structure
```
github-actions-automation/
├── count_logs.sh       # Script to count log entries
├── log_time.sh         # Script to log timestamp and user
├── log.txt             # Activity log file (auto-generated)
├── log_count.txt       # Count summary (auto-generated)
└── README.md           # Project documentation and setup guide
```

## 🛠️ Installation and Setup

1. Clone this repository
2. Ensure the shell scripts have execute permissions:
   ```bash
   chmod +x *.sh
   ```
3. Set up GitHub Actions workflows to trigger these scripts

### Running Locally
```bash
# Log current time and user
./log_time.sh

# Count log entries
./count_logs.sh
```

### Prerequisites
- GitHub repository with GitHub Actions enabled
- Basic understanding of shell scripting

## 🔧 Components

### `log_time.sh`
- Records the current timestamp and GitHub username
- Appends entries to `log.txt`
- Automatically detects the GitHub user from the Actions context

### `count_logs.sh`
- Counts the total number of lines in the log file
- Outputs the count to `log_count.txt`
- Provides a summary of recorded activities

### Generated Files
- **`log.txt`**: Contains timestamped entries of user activity
- **`log_count.txt`**: Shows the total number of recorded updates

## 📊 Sample Output

### Log Entry Format
```
[Sat May  3 12:54:09 UTC 2025] - GitHub User: ArenJohnD
[Sat May  3 13:40:00 UTC 2025] - GitHub User: ArenJohnD
```

### Count Summary
```
There have been 4056 updates recorded in the log file.
```

## 🔄 GitHub Actions Integration

To integrate with GitHub Actions, create a workflow file (`.github/workflows/automation.yml`):

```yaml
name: Automation Workflow

on:
  schedule:
    - cron: '0 */2 * * *'  # Run every 2 hours
  workflow_dispatch:        # Allow manual triggering

jobs:
  log-activity:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Log Activity
        run: ./log_time.sh
      - name: Count Logs
        run: ./count_logs.sh
      - name: Commit Changes
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"
          git add log.txt log_count.txt
          git commit -m "Update logs" || exit 0
          git push
```

## 🎯 Use Cases

- **Activity Monitoring**: Track when users interact with your repository
- **Analytics**: Analyze user engagement patterns over time
- **Debugging**: Monitor automated processes and their execution frequency
- **Learning**: Understand GitHub Actions and shell scripting in CI/CD

## 🤝 Contributing

Feel free to contribute by:
- Improving the shell scripts
- Adding new automation features
- Enhancing the documentation
- Creating additional workflows

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

**Note:** This automation runs every 2 hours via GitHub Actions. The log files are automatically updated and committed to the repository, providing a real-time audit trail of system activity.
