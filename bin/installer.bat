@echo off
echo --------------------------------------------------
echo     Checking python version 2.7..    
echo --------------------------------------------------
IF EXIST C:\Python2* (
	echo --------------------------------------------------
	echo     Python 2.7 Found     
	echo --------------------------------------------------
	echo --------------------------------------------------
	echo     Checking pip..       
	echo --------------------------------------------------
	cd C:\Python2*\Scripts
	IF EXIST pip.exe (
		echo --------------------------------------------------
		echo     Pip Found   
		echo --------------------------------------------------
		echo --------------------------------------------------
		echo     Mysql-Connector Installation..   
		echo --------------------------------------------------
		pip install mysql-connector-python -t ../lib
		echo --------------------------------------------------
		echo     Installation Successful   
		echo --------------------------------------------------
		echo --------------------------------------------------
		echo     Checking MySQL in C:\Program Files    
		echo --------------------------------------------------
		IF exist "C:\Program Files\MYSQL" (
			echo --------------------------------------------------
			echo   MySQL Found - Please change the DB_SERVER to MySQL and give MySQL password inside the db.conf[conf folder]. After that Run runbroker.bat file   
			echo --------------------------------------------------
		)
		IF  not exist "C:\Program Files\MYSQL" (
			echo --------------------------------------------------
			echo     MySQL not found. Please install MySQL 5.7 or higher   
			echo --------------------------------------------------
		)
		cmd /k	
	)
	IF not EXIST pip.exe (
		echo --------------------------------------------------
		echo     Pip not Found   
		echo --------------------------------------------------
		echo --------------------------------------------------
		echo     Searching for WGET...   
		echo --------------------------------------------------
		wget --version
		IF %ERRORLEVEL% EQU 0  (
			echo --------------------------------------------------
			echo    WGET Found  
			echo --------------------------------------------------
			wget -nc https://bootstrap.pypa.io/get-pip.py -P %USERPROFILE%\Downloads
			cd C:\Python2*\
			xcopy %USERPROFILE%\Downloads\get-pip.py .
			python get-pip.py
			cd Scripts
			echo --------------------------------------------------
			echo    Mysql-Connector Installation..   
			echo --------------------------------------------------
			pip install mysql-connector-python -t ../lib
			echo --------------------------------------------------
			echo    Checking MySQL in C:\Program Files   
			echo --------------------------------------------------
			IF exist "C:\Program Files\MYSQL" (
				echo --------------------------------------------------
				echo      MySQL Found - Please change the DB_SERVER to MySQL and give MySQL password inside the data_store.conf[conf folder]   
				echo --------------------------------------------------
			)
			IF  not exist "C:\Program Files\MYSQL" (
				echo --------------------------------------------------
				echo     MySQL not found. Please install MySQL 5.7 or higher   
				echo --------------------------------------------------
			)
			cmd /k
		)
		IF %ERRORLEVEL% NEQ 0 ( 
			start "" /wait cmd /c "echo WGET not Found. Please download and install WGET [https://eternallybored.org/misc/wget/] and restart the installer.bat file. For reference please check README.txt file&pause" 
		)
	cmd /k
	)
)
IF NOT EXIST C:\Python2* (
	echo --------------------------------------------------
	echo     Python not Found   
	echo --------------------------------------------------
	IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
		echo --------------------------------------------------
		echo    Windows 64-bit  		
		echo --------------------------------------------------
		echo --------------------------------------------------
		echo    Searching for WGET...  
		echo --------------------------------------------------
		wget --version
		IF  %ERRORLEVEL% EQU 0  (
			echo --------------------------------------------------
			echo    Wget Found   
			echo --------------------------------------------------\
			echo --------------------------------------------------
			echo    Python Installation..   	
			echo --------------------------------------------------
			wget -nc https://www.python.org/ftp/python/2.7.9/python-2.7.9.amd64.msi -P %USERPROFILE%\Downloads
			cd %USERPROFILE%\Downloads
			msiexec.exe /i python-2.7.9.amd64.msi /QF
			setx PATH "%PATH%;C:\Python27"
			setx PATH "%PATH%;C:\Python27\Scripts"
			wget -nc https://bootstrap.pypa.io/get-pip.py -P %USERPROFILE%\Downloads
			cd C:\Python2*\
			xcopy %USERPROFILE%\Downloads\get-pip.py . 
			python get-pip.py
			cd Scripts
			echo --------------------------------------------------
			echo    Mysql-Connector Installation..  
			echo --------------------------------------------------
			pip install mysql-connector-python -t ../lib
			echo --------------------------------------------------
			echo    Checking MySQL in C:\Program Files   
			echo --------------------------------------------------
			IF exist "C:\Program Files\MYSQL" (
				echo --------------------------------------------------
				echo  	  MySQL Found - Please change the DB_SERVER to MySQL and give MySQL password inside the data_store.conf[conf folder]     
				echo --------------------------------------------------
			)
			IF  not exist "C:\Program Files\MYSQL" (
				echo --------------------------------------------------
				echo      MYSQL not Found - Please install MySQL 5.7 or higher and run the broker[Refer README]     
				echo --------------------------------------------------
			)
			cmd /k
		)		
		IF %ERRORLEVEL% NEQ 0 ( 
			start "" /wait cmd /c "echo WGET not Found. Please download and install WGET[https://eternallybored.org/misc/wget/] and restart the installer.bat file. For reference please check README.txt file&pause" 
		)
		cmd /k
	)
	IF "%PROCESSOR_ARCHITECTURE%"=="AMD32" (
		echo --------------------------------------------------
		echo      Windows 32-bit   
		echo --------------------------------------------------
		echo --------------------------------------------------
		echo      Searching for WGET...  
		echo --------------------------------------------------
		wget --version
		IF %ERRORLEVEL% EQU 0  (
			echo --------------------------------------------------
			echo      Wget Found    
			echo --------------------------------------------------
			echo --------------------------------------------------
			echo      Python Installation..   
			echo --------------------------------------------------	
			wget -nc https://www.python.org/ftp/python/2.7.9/python-2.7.9.msi -P %USERPROFILE%\Downloads
			cd %USERPROFILE%\Downloads
			msiexec.exe /i python-2.7.9.msi /QF
			setx PATH "%PATH%;C:\Python27"
			setx PATH "%PATH%;C:\Python27\Scripts"
			wget -nc https://bootstrap.pypa.io/get-pip.py -P %USERPROFILE%\Downloads
			cd C:\Python2*\
			xcopy %USERPROFILE%\Downloads\get-pip.py .
			python get-pip.py
			cd Scripts
			echo --------------------------------------------------
			echo    Mysql-Connector Installation..  
			echo --------------------------------------------------
			pip install mysql-connector-python -t ../lib
			echo --------------------------------------------------
			echo    Checking MySQL in C:\Program Files    
			echo --------------------------------------------------
			IF exist "C:\Program Files\MYSQL" (
				echo --------------------------------------------------
				echo MySQL Found - Please change the DB_SERVER to MySQL and give MySQL password inside the db.conf[conf folder]    
				echo --------------------------------------------------
			)
			IF  not exist "C:\Program Files\MYSQL" (
				echo --------------------------------------------------
				echo  Please install MySQL 5.7 or higher   
				echo --------------------------------------------------
			)
			cmd /k
		)					
		IF %ERRORLEVEL% NEQ 0 ( 
			start "" /wait cmd /c "echo WGET not Found. Please download and install WGET[https://eternallybored.org/misc/wget/] and restart the installer.bat file. For reference please check README.txt file&pause" 
		)
		cmd /k
	)
)
