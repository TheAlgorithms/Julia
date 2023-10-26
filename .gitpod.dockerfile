FROM gitpod/workspace-base:2023-10-19-14-24-02

ENV JULIA_TMP="julia_tmp.tar.gz"

RUN test ! -e "${JULIA_TMP}" \
    && curl https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.3-linux-x86_64.tar.gz -sSf -o "${JULIA_TMP}" \
    && tar zxvf ${JULIA_TMP} \
    && rm ${JULIA_TMP} \
    && echo "export PATH=${HOME}/julia-1.9.3/bin/:\$PATH" >> ~/.bashrc
