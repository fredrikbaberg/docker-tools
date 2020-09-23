FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
# RUN apt-get install -yq \
#     --no-install-recommends \
#     texlive-full \
#     latexmk \
#     && rm -rf /var/lib/apt/lists/*
# # A full install will use 3486 MB, compared to 1154 MB for the packages below (which thus does not have everything).
# # Should look at this script: https://gist.github.com/briandk/924d101f28dbf309758206fa3eff32b4
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
    latexmk \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /docs
ENTRYPOINT [ "latexmk" ]
CMD [ "-pdf", "-outdir=/out" ]
