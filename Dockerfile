FROM python:3-bullseye

# packages
RUN apt update \
    && apt install -y \
    #utils
    ffmpeg imagemagick fish \
    #fonts
    fonts-noto-cjk \
    #pip package dependencies
    build-essential gfortran libopenblas-base liblapack-dev

RUN pip install numpy scipy matplotlib pandas ipykernel seaborn statsmodels pmdarima openpyxl
RUN pip install japanize_matplotlib
RUN pip install pykalman
RUN pip install opencv-python

# for scraping
RUN pip install requests beautifulsoup4