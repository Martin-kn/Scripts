![app](BASH_SCRIPTS.png)

## Data-recovery
Folder that contains scripts used to recover/classify +167K files from data loss incident.
[Link](https://github.com/Martin-kn/Bash-scripts/tree/main/data-recovery)

## zabbix-agent2-install.sh

Bash script to run with Ansible to configure all VMs:
- Install Zabbix agent2
- Enable service
- Replace default zabbix server IP
- Reboot service

## Nessus-update-core
Script to update all Nessus components, including core components that sometimes need to stop the Nessus service and re-enable
- Web interface sometimes is not working properly to perform updates
- Save logs files
- Check if the service needs to be stopped and then re-enable Nessus
- Update all components: plugins/core components

  

## docsearch.sh

Popup menu to search and open PDF documents that I need to have on hand for reference
- Search only PDF files in the folder
- Case insensitive search

## gif-ffmpeg.sh

Script to create gif by passing a video as a parameter

- You must enter at what second/minute of the video the gif starts
- Select the duration of the gif
- Option to decrease the resolution of the gif


## pdfconverter (md to pdf)
Shell function to convert markdown to PDF
- Code block highlighting
