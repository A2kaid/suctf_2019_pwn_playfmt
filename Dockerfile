FROM ctftraining/base_pwn_xinetd

COPY _files/flag.sh /flag.sh
COPY src/pwn /home/ctf/pwn

RUN cp /tmp/pwn /home/ctf/pwn && \
    chown root:ctf /home/ctf/pwn && \
    chmod 750 /home/ctf/pwn && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*