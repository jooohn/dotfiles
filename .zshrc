SHHOME=${HOME}/.sh/

# source .sh and .zsh files in ${SHHOME}
if [ -d ${SHHOME} ]; then
    for exp in '*.sh' '*.zsh'; do
        for file in `find ${SHHOME} -name ${exp} -type f`; do
            source ${file}
        done
    done
fi
