Project Title - Linux Admin Toolkit

A beginner-friendly Linux Administration Toolkit built using Bash Shell Scripting.

Project Overview : 
Linux Admin Toolkit is a menu-driven Bash Shell Scripting project that helps users perform common Linux administration tasks through an interactive command-line interface.
The toolkit combines multiple administrative utilities such as system information, resource monitoring, user management, file operations, network information, and health report generation into a single application.
This project was built as a hands-on learning project to strengthen Linux, Bash scripting, Git, and GitHub skills.


Features : 
- System Information
- Resource Monitoring
- User Management
  - Create User
  - Delete User
  - Change Password
  - Lock User
  - Unlock User
  - List Users
- File Operations
  - Create File
  - Delete File
  - Copy File
  - Move/Rename File
  - Create Directory
  - Delete Directory
  - Search File
- Network Information
- Health Report Generation
- Interactive Menu Driven Interface

  
 Folder Structure :
```text
linux-admin-toolkit/
│
├── modules/
│   ├── system_info.sh
│   ├── resource_monitor.sh
│   ├── user_management.sh
│   ├── file_operations.sh
│   ├── network_info.sh
│   └── health_report.sh
│
├── reports/
├── screenshots/
├── logs/
│
├── toolkit.sh
├── README.md
└── .gitignore
```

Technologies Used :
- Bash Shell Scripting
- Linux (Ubuntu)
- Git
- GitHub
- Linux Administration Commands

 Prerequisites :
- Ubuntu/Linux
- Bash Shell
- Git (optional)
- Sudo privileges for user management operations

Installation :
Clone the repository:
```bash
git clone https://github.com/mishra234ansumaan/linux-admin-toolkit.git
```
Move into the project directory:
```bash
cd linux-admin-toolkit
```
Give execute permission:
```bash
chmod +x toolkit.sh
chmod +x modules/*.sh
```

How to Run :
```bash
sudo ./toolkit.sh
```

Sample Menu :
```text
=============================
 Linux Admin Toolkit
=============================

1. System Information
2. Resource Monitor
3. User Management
4. File Operations
5. Network Information
6. Health Report
7. Exit
```

Future Improvements :
- Log management
- Backup and Restore
- Package Management
- Service Management
- Disk Cleanup Utility
- Colored terminal output

  Author :
**Ansuman Mishra**
GitHub :
https://github.com/mishra234ansumaan

















