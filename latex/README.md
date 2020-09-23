# README #

Compile LaTeX documents using latexmk. Output will be stored in folder `/output`.

Run with:
`docker run --rm -it -v ${pwd}:/docs -v ${pwd}/output:/out <image name>`
or, for correct permissions:
`docker run --rm -it -v ${pwd}:/docs -v ${pwd}/output:/out -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) <image name>`