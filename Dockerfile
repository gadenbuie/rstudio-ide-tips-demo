FROM rocker/verse:4.0.3

COPY deps.R /home/rstudio/deps.R
RUN sudo su - rstudio && Rscript /home/rstudio/deps.R && rm /home/rstudio/deps.R
COPY . /home/rstudio/rstudio-ide-tips-demo

RUN wget https://s3.amazonaws.com/rstudio-ide-build/desktop/bionic/amd64/rstudio-1.4.1038-amd64.deb -O /tmp/rstudio.deb && \
  dpkg -i /tmp/rstudio.deb && \
  rm /tmp/rstudio.deb
