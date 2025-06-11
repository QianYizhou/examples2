from conan import ConanFile


class CompressorRecipe(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeToolchain", "CMakeDeps"

    def requirements(self):
        self.requires("zlib/1.2.12")

    def build_requirements(self):
        if self.settings.os == "Windows":
            self.tool_requires("cmake/3.22.1")
        else:
            print("CMake is not required for Linux or macOS, as it is already installed in the CI environment.")
