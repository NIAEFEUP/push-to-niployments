# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> This changelog was generated some commits after the [v1.0.0 tag](https://github.com/Naapperas/zon/releases/tag/v1.0.0), so the changelog will have some inconsistencies until the next release.

## [Unreleased]

### Added
- Added new input `docker_build_args`.

## [v2.1]

### Added
- Added new input `docker_target` option;

### Changed
- Usage instructions now refer to a specific tag instead of `main`

## [v2]

### Changed
- Changed the way names are computed: every image will now live under the `niaefeup` Harbor project by default, unless specified.
- Changed `scripts/get-project-and-repository-name.sh` to `scripts/get-repository-name.sh`.

### Removed
- Removed naming section from `README.md`

## [v1.1.0]

### Added
- Added new input `docker_dockerfile` and `docker_context` options;
- Added `scripts/parse-docker-context-and-dockerfile.sh`

### Deleted
- Removed `scripts/get-and-bump-version.sh`;

## [v1] - 2024-04-07

### Added
- Added base source code files for the action.

[Unreleased]: https://github.com/NIAEFEUP/push-to-niployments/compare/v2.1...HEAD
[v2.1]: https://github.com/NIAEFEUP/push-to-niployments/compare/v2...v2.1
[v2]: https://github.com/NIAEFEUP/push-to-niployments/compare/v1.1.0...v2
[v1.1.0]: https://github.com/NIAEFEUP/push-to-niployments/compare/v1...v1.1.0
[v1]: https://github.com/NIAEFEUP/push-to-niployments/releases/tag/v1
