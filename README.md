# pMars-docker
pMars on Docker

Build with "docker build -t pmars ."
Run with "docker run pmars" and added file names. i.e. "docker run pmars flashpaper.red rave.red pspace.red"
Run with "docker run --mount type=bind,source="$(pwd)"/warriors,target=/home/ubuntu/pMARS/warriors pmars" and added file names to bind local folder warriors in
