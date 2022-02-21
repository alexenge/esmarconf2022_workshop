FROM alexenge/r_basics:4.1.2

USER root

RUN \
    # Install R packages from MRAN
    install2.r --error --skipinstalled \
    numDeriv \
    clubSandwich \
    # Install R packages from GitHub
    && installGithub.r \
    wviechtb/metadat \
    wviechtb/metafor \
    # Add default user permissions
    && chown -R "$NB_USER" "$HOME"

USER "$NB_USER"
