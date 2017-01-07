julia -e 'Pkg.clone(pwd())'
julia -e 'Pkg.build("$name")'
if [ -f test/runtests.jl ]; then
  julia --check-bounds=yes -e 'Pkg.test("$name", coverage=true)'
fi
