# Changelog

## [0.1.5](https://github.com/noir-lang/noirup/compare/v0.1.4...v0.1.5) (2026-09-17)


### Features

* add option for listing noir versions ([#39](https://github.com/noir-lang/noirup/issues/39)) ([324a51f](https://github.com/noir-lang/noirup/commit/324a51fca2c410d2477400316efc5ce0d743a5b3))
* install noir-execute ([#65](https://github.com/noir-lang/noirup/issues/65)) ([1b4e93a](https://github.com/noir-lang/noirup/commit/1b4e93a297641311b5f4bd9e8f24df30f6751d84))


### Bug Fixes

* attempt the bundle download rather than probing for it ([#69](https://github.com/noir-lang/noirup/issues/69)) ([00aa0ec](https://github.com/noir-lang/noirup/commit/00aa0ec2de7c4022981188f411966f7461d218d4))
* **ci:** rank releases above their pre-releases when comparing versions ([#66](https://github.com/noir-lang/noirup/issues/66)) ([c090b42](https://github.com/noir-lang/noirup/commit/c090b4279e8e2c64004187ca47a53af7b5e84ee0))
* **ci:** test a rolling window of recent Noir releases ([#68](https://github.com/noir-lang/noirup/issues/68)) ([079cc02](https://github.com/noir-lang/noirup/commit/079cc0290f18bbb78e0b4e1d27e7b79012bebaa0))
* **ci:** update workflow action dependencies ([#71](https://github.com/noir-lang/noirup/issues/71)) ([b31be1b](https://github.com/noir-lang/noirup/commit/b31be1be339c7ad408ccba5a7a88bdcffa683e5a))
* create bin directory before unpacking prebuilt binaries ([#63](https://github.com/noir-lang/noirup/issues/63)) ([718dacd](https://github.com/noir-lang/noirup/commit/718dacdb8d7607659a2f43892a98ab988249418f))
* ensure that output directory exists before moving binaries ([#55](https://github.com/noir-lang/noirup/issues/55)) ([f7b3089](https://github.com/noir-lang/noirup/commit/f7b3089f5839e1d10128fca6df0208a5a9f9f152))

## [0.1.4](https://github.com/noir-lang/noirup/compare/v0.1.3...v0.1.4) (2025-02-20)


### Features

* Install noir-profiler and noir-inspector ([#46](https://github.com/noir-lang/noirup/issues/46)) ([cf71599](https://github.com/noir-lang/noirup/commit/cf71599ddf5dc57486935d3bcba8f6ef07bb8850))

## [0.1.3](https://github.com/noir-lang/noirup/compare/v0.1.2...v0.1.3) (2023-09-05)


### Features

* **flags:** add support for feature flags ([#37](https://github.com/noir-lang/noirup/issues/37)) ([18d911b](https://github.com/noir-lang/noirup/commit/18d911bfb15cd3219e4a4d046f96ca3b1c2e3d5f))


### Bug Fixes

* Checkout the project at release tag to find files to upload ([82f68ff](https://github.com/noir-lang/noirup/commit/82f68ffd1f0bcf1009db917df25482bf7e8b2650))
* **ci:** Checkout the project at release tag to find files to upload ([#29](https://github.com/noir-lang/noirup/issues/29)) ([82f68ff](https://github.com/noir-lang/noirup/commit/82f68ffd1f0bcf1009db917df25482bf7e8b2650))

## [0.1.2](https://github.com/noir-lang/noirup/compare/v0.1.1...v0.1.2) (2023-04-26)


### Bug Fixes

* remove usage of `cargo install` and prefer `cargo build` ([#24](https://github.com/noir-lang/noirup/issues/24)) ([c6c90a5](https://github.com/noir-lang/noirup/commit/c6c90a5c9135c0bc707f1318d313a364c66350e6))

## [0.1.1](https://github.com/noir-lang/noirup/compare/v0.1.0...v0.1.1) (2023-03-21)


### Features

* **action:** cache `transcript00.dat` file to mitigate flakey downloader ([#20](https://github.com/noir-lang/noirup/issues/20)) ([31e2c93](https://github.com/noir-lang/noirup/commit/31e2c93f77714c898c6a9ea7f05d7406ede41b66))
* **action:** add initial version of github action ([#11](https://github.com/noir-lang/noirup/issues/11)) ([d60cb9c](https://github.com/noir-lang/noirup/commit/d60cb9c526ef2b2660063559e44aeb2b2d70a7e1))
