vcpkg_from_github(
  OUT_SOURCE_PATH
  SOURCE_PATH
  REPO
  piot/tiny-libc
  REF
  91439e660496e67ad95aaec7f49fc31e3e5ef22a
  SHA512
  9b2d3b1d53f77f14ea413fab9cff7b43c528f4c8833c9ae6f1d1d1ac205b67be9889fcbd8a06a78e3223ccd493bf5fb362a3ce55dc87e05d26a486da2f8045c1
  HEAD_REF
  main)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_build()
#vcpkg_cmake_config_fixup()

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
