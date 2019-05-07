###############################################################################
# 									      #
# KAMERMANPR/DOCKER-HIP-STUDY   					      #
#									      #
# Build an image with the environment required to run the HIP study analysis  #                                                                  #									      #
# <-- Build command -->                                                       #
# docker build -t kamermanpr/docker-hip-study:<version>                       #
#                                                                             #
# <-- The build image can be downloaded from Docker Hub -->                   #
# docker pull kamermanpr/docker-hip-study:<version>                           #
#									      #
# <-- Run command -->                                                         #
# docker run --name hip -d -p 8787:8787 -e USER=user -e PASSWORD=password     #
# kamermanpr/docker-hip-study:<version>                                       #
#									      #
# <-- Login to RStudio -->                                                    #
# In your browser, navigate to: localhost:8787			              #
# Username: user							      #
# Password: password							      #
#                                                                             #
###############################################################################

#-- Get the verse rocker image --#
# Built on Debian:stretch

FROM rocker/verse:3.6.0

MAINTAINER Peter Kamerman <peter.kamerman@gmail.com>

#-- Add MRAN packages --#

RUN Rscript -e "install.packages(c('car', 'tidyverse', 'magrittr', 'knitr', 'skimr', 'broom', 'coin'))"
