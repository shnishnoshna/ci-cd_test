FROM ubuntu:latest
RUN apt-get update && apt-get install -y build-essential \
gcc-mingw-w64-x86-64
RUN mkdir -p /usr/src/my_c_app
WORKDIR /usr/src/my_c_app
COPY . /usr/src/my_c_app
RUN echo "Check_compile..."
RUN x86_64-w64-mingw32-gcc \
    -Wall -Werror -Wextra \
    -o my_program.exe \
    my_program.c
RUN gcc -Wall -Werror -Wextra -o my_program_linux my_program.c
RUN ls -la /usr/src/my_c_app
CMD ["./my_program_linux"]
