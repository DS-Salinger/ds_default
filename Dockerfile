FROM ubuntu:22.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
    locales
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ \
    > /etc/timezone

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-cache policy python3.9

RUN apt-get install -y \
    python3.9 \
    python3-pip \
    git \
    wget \
    zip \
    unzip \    
    python-is-python3 \
    libgl1-mesa-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install --ignore-installed \
    pycaret[full] \
    pandas \
    numpy \
    scipy \
    scikit-learn \
    jupyterlab \
    matplotlib \
    japanize_matplotlib \
    seaborn \
    plotly \
    opencv-python \
    pillow \
    graphviz \
    shap \
    xgboost \
    lightgbm \
    catboost \
    tqdm \
    tabula-py