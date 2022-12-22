module PlutoPkgTestF

import Pkg

include_dependency("../Project.toml")

project_relative_path(xs...) = normpath(joinpath(dirname(dirname(pathof(@__MODULE__))), xs...))
p = Pkg.TOML.parsefile(project_relative_path("Project.toml"))

const MY_VERSION = VersionNumber(p["version"])
const MY_NAME = p["name"]

end # module
