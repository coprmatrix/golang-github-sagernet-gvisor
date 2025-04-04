file=$PWD/*.spec
path="$(basename $file)"
pushd "${outdir:-$PWD}"
content="$(sed -r 's/(Version:)[^0-9\.]*(.*)/\1  \2/g' $file)"
echo "${content}" > "$path"
spectool --all --get-files "$path"
popd
