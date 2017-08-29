FROM debian:jessie
# ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
# # A full install will use 3486 MB, compared to 1154 MB for the packages below (which thus does not have everything).
# RUN apt-get install -yq \
#     --no-install-recommends \
#     texlive-full \
#     && rm -rf /var/lib/apt/lists/*
RUN apt-get install -yq \
    --no-install-recommends \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    texlive-science \
    texlive-publishers \
    texlive-latex-extra \
    texlive-math-extra \
    texlive-generic-extra \
    texlive-formats-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    && rm -rf /var/lib/apt/lists/*
VOLUME /docs
WORKDIR /docs
