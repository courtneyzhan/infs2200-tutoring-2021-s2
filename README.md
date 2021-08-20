# infs2200-tutoring-2021-s2
Tutoring Notes for INFS2200 Relational Database Systems, in 2021 Semester Two.

## Why can't I login/find SQL Plus in RDP or the Lab PC?
See [RDP/Lab PC Set Up Guide](https://raw.githubusercontent.com/courtneyzhan/infs2200-tutoring-2021-s2/master/practicals/RDP_Lab_Comp_Guide.md) if you are connecting to RDP or Lab computer and you can't find/log into SQL Plus.  
Also, read the important notice below. Losing your work as a result of not understanding & following below instructions is NOT an excuse/grounds for extension.

## !!!!!! IMPORTANT !!!!!!
### If you are RDP-ing
You are connecting to a random machine (either a dedicated RDP machine or one on campus) each time. **i.e. EVERY TIME YOU WILL _NOT_ GET THE SAME COMPUTER AND ALL YOUR WORK WILL BE GONE. DO NOT SAVE ON C: DRIVE**  
Save your work by exporting your work like the following:  
1. In SQLPLUS:  
`COMMIT;`  
2. In CMD (commandprompt) as administrator  
`EXP SQLPLUSUSERNAME/SQLPLUSPASSWORD file=H:\INFS2200_Prac1.dmp owner=SQLPLUSUSERNAME`  

Tips:  
* Save your work on H:Drive (can be accessed on any machine you connect to, and you can grab it off MOSS/LICHEN too)  
* Email your dump file to yourself as well  

### If you are using a Lab Computer
You are connecting to a single computer. If you do not use this computer again, you won't be able to access your work. Try hard to claim a computer in your lab and keep that one for the rest of the semester. In case that it is occupied/unavailable I recommend following RDP export steps if you prefer.

### If you are using your own computer
#### Mac
Students cannot execute SQL files on SQL Plus, current solution is just to copy and paste the contents of SQL into your command line.

#### Windows
No problems encountered by students so far
