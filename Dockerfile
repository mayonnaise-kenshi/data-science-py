FROM python:3-bullseye

# packages
RUN apt update \
    && apt install -y ffmpeg imagemagick \
    && fonts-liberation fonts-ipafont \
    && build-essential gfortran libopenblas-base liblapack-dev\
    && apt install -y fish
RUN pip install numpy scipy matplotlib pandas ipykernel seaborn statsmodels pmdarima openpyxl
RUN pip install japanize_matplotlib
RUN pip install pykalman
RUN pip install opencv-python

# for scraping
RUN pip install requests beautifulsoup4