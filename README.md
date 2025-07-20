# *todo_list_apex READM*
It's an applications created on base on todo_app use Oracle APEX 24.2.0

TODO Application is an application to manage your tasks 

## **Sample screenshots** ##

### **Main view app** ###

<img width="2553" height="537" alt="image" src="https://github.com/user-attachments/assets/6ba4d1fe-d6bf-4b91-80f1-f8282ebd7bf0" />


### **View app with description** ###


## **Introduction**
Created this project was purpose main learned Oracle Apex.

This project is useful to manage tasks.

- [x] App has searched all tasks from database.
- [x] we can ADD new task.
- [x] we can UPDATE added task ( change description, status or finish date).
- [x] we can delete task.

In **plsql file** is code from TODO base. I created there:

- sequence for increment id;
- procedures for:

    - add task
    - update task
    - delete task
    - update status task
  - **Procedure for check task status is called by DBMS_SCHEDULER 'check_task_status'** -> this job check every day about 23:59 that 
  status each task with finish date equal current day is "DONE", If not change on status "DONE".

### **Examples possibly tasks to add this project**
- [ ] Group task by status
- [ ] add subtask to main task
- [ ] delete for a few tasks

## **Technologies**

* Oracle APEX 24.2.0
* Oracle SQL Developer


## **Authors**

TODO APP was created by **[Sylwia](https://github.com/daisygith)**.

