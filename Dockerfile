FROM rocker/verse:4.0.3-daily

COPY deps.R /home/rstudio/deps.R
RUN sudo su - rstudio && Rscript /home/rstudio/deps.R && rm /home/rstudio/deps.R
COPY . /home/rstudio/rstudio-ide-tips-demo
RUN mkdir -p /home/rstudio/.config/rstudio/keybindings/ && \
  mv /home/rstudio/rstudio-ide-tips-demo/.addins.json /home/rstudio/.config/rstudio/keybindings/addins.json && \
  chown -R rstudio:rstudio /home/rstudio/rstudio-ide-tips-demo && \
  chown -R rstudio:rstudio /home/rstudio/.config/rstudio/
