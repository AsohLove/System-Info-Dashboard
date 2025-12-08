# System Info Dashboard
A dashboard that displays the system information such as *memory, disk, processes* of a machine.

## Project Description

Used bash commands such as `free`, `grep`, `awk`(shown below) to extract information about a system.
```bash

    total_memory=$(free -m | grep "Mem:" | awk '{print $2}')
    used_memory=$(free -m | grep "Mem:" | awk '{print $3}')
    free_memory=$(free -m | grep "Mem:" | awk '{print $4}')

    total_disk=$(df -h / | tail -1 | awk '{print $2}')
    used_disk=$(df -h / | tail -1 | awk '{print $3}')
    free_disk=$(df -h / | tail -1 | awk '{print $4}')

    total_run_proc=$(ps aux --no-heading| wc -l)
    top_five_proc=$(ps aux --sort -%mem | head -6 | awk '{print $1, $2, $3, $4, $5}')


```

## About
This project is built with *bash commands* and to be able to execute this program you can get a local copy by cloning [this repository](https://github.com/AsohLove/System-Info-Dashboard.git) with a terminal or command-line, navigate to the parent directory and then run the program with `./sysinfo.sh`  


**Sample dashboard from running the program**

![Info Dashboard](/screenshots/Dash.png)


## Author

**Love Asoh**

- GitHub: [@loveasoh](https://github.com/AsohLove)
- Twitter: [@loveasoh](https://x.com/LoveTheModifier)
- LinkedIn: [love asoh](https://www.linkedin.com/in/asohlove/)


## License
This project is [MIT](./LICENSE) licensed.