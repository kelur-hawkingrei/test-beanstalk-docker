    FROM ubuntu:14.04
     
    # Install Python Setuptools  
    RUN apt-get install -y python-setuptools  
     
    # Install pip  
    RUN easy_install pip  
     
    # Add and install Python modules  
    ADD requirements.txt /src/requirements.txt
    RUN cd /src; pip install -r requirements.txt  
     
    # Bundle app source  
    ADD . /src  
    # Expose  
    EXPOSE  999 
    RUN cd src
    # Run
    WORKDIR /src  
    CMD ["python", "application.py"]  
