SHHOME=${HOME}/.sh/

# source .sh and .bash files in ${SHHOME}
if [ -d ${SHHOME} ]; then
    for exp in '*.sh' '*.bash'; do
        for file in `find ${SHHOME} -name ${exp} -type f`; do
            source ${file}
        done
    done
fi
