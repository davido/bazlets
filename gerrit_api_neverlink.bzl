def gerrit_api_neverlink():
  # TODO(davido): Remove this, once java_binary accepts
  # provided_deps attribute, see:
  # https://github.com/bazelbuild/bazel/issues/1402
  native.java_library(
    name = 'gerrit-plugin-api-neverlink',
    exports = ['@gerrit_plugin_api//jar'],
    neverlink = True)
  native.java_library(
    name = 'gerrit-plugin-gwtui-neverlink',
    exports = ['@gerrit_plugin_gwtui//jar'],
    neverlink = True)
