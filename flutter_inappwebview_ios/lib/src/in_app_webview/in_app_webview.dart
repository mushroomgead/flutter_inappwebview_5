import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview_platform_interface/flutter_inappwebview_platform_interface.dart';
import 'headless_in_app_webview.dart';

import '../find_interaction/find_interaction_controller.dart';
import 'in_app_webview_controller.dart';
import '../pull_to_refresh/main.dart';
import '../pull_to_refresh/pull_to_refresh_controller.dart';

/// Object specifying creation parameters for creating a [PlatformInAppWebViewWidget].
///
/// Platform specific implementations can add additional fields by extending
/// this class.
class IOSInAppWebViewWidgetCreationParams
    extends PlatformInAppWebViewWidgetCreationParams {
  IOSInAppWebViewWidgetCreationParams(
      {super.controllerFromPlatform,
      super.key,
      super.layoutDirection,
      super.gestureRecognizers,
      super.headlessWebView,
      super.keepAlive,
      super.preventGestureDelay,
      super.windowId,
      super.onWebViewCreated,
      super.onLoadStart,
      super.onLoadStop,
      @Deprecated('Use onReceivedError instead') super.onLoadError,
      super.onReceivedError,
      @Deprecated("Use onReceivedHttpError instead") super.onLoadHttpError,
      super.onReceivedHttpError,
      super.onProgressChanged,
      super.onConsoleMessage,
      super.shouldOverrideUrlLoading,
      super.onLoadResource,
      super.onScrollChanged,
      @Deprecated('Use onDownloadStartRequest instead') super.onDownloadStart,
      super.onDownloadStartRequest,
      @Deprecated('Use onLoadResourceWithCustomScheme instead')
      super.onLoadResourceCustomScheme,
      super.onLoadResourceWithCustomScheme,
      super.onCreateWindow,
      super.onCloseWindow,
      super.onJsAlert,
      super.onJsConfirm,
      super.onJsPrompt,
      super.onReceivedHttpAuthRequest,
      super.onReceivedServerTrustAuthRequest,
      super.onReceivedClientCertRequest,
      @Deprecated('Use FindInteractionController.onFindResultReceived instead')
      super.onFindResultReceived,
      super.shouldInterceptAjaxRequest,
      super.onAjaxReadyStateChange,
      super.onAjaxProgress,
      super.shouldInterceptFetchRequest,
      super.onUpdateVisitedHistory,
      @Deprecated("Use onPrintRequest instead") super.onPrint,
      super.onPrintRequest,
      super.onLongPressHitTestResult,
      super.onEnterFullscreen,
      super.onExitFullscreen,
      super.onPageCommitVisible,
      super.onTitleChanged,
      super.onWindowFocus,
      super.onWindowBlur,
      super.onOverScrolled,
      super.onZoomScaleChanged,
      @Deprecated('Use onSafeBrowsingHit instead')
      super.androidOnSafeBrowsingHit,
      super.onSafeBrowsingHit,
      @Deprecated('Use onPermissionRequest instead')
      super.androidOnPermissionRequest,
      super.onPermissionRequest,
      @Deprecated('Use onGeolocationPermissionsShowPrompt instead')
      super.androidOnGeolocationPermissionsShowPrompt,
      super.onGeolocationPermissionsShowPrompt,
      @Deprecated('Use onGeolocationPermissionsHidePrompt instead')
      super.androidOnGeolocationPermissionsHidePrompt,
      super.onGeolocationPermissionsHidePrompt,
      @Deprecated('Use shouldInterceptRequest instead')
      super.androidShouldInterceptRequest,
      super.shouldInterceptRequest,
      @Deprecated('Use onRenderProcessGone instead')
      super.androidOnRenderProcessGone,
      super.onRenderProcessGone,
      @Deprecated('Use onRenderProcessResponsive instead')
      super.androidOnRenderProcessResponsive,
      super.onRenderProcessResponsive,
      @Deprecated('Use onRenderProcessUnresponsive instead')
      super.androidOnRenderProcessUnresponsive,
      super.onRenderProcessUnresponsive,
      @Deprecated('Use onFormResubmission instead')
      super.androidOnFormResubmission,
      super.onFormResubmission,
      @Deprecated('Use onZoomScaleChanged instead') super.androidOnScaleChanged,
      @Deprecated('Use onReceivedIcon instead') super.androidOnReceivedIcon,
      super.onReceivedIcon,
      @Deprecated('Use onReceivedTouchIconUrl instead')
      super.androidOnReceivedTouchIconUrl,
      super.onReceivedTouchIconUrl,
      @Deprecated('Use onJsBeforeUnload instead') super.androidOnJsBeforeUnload,
      super.onJsBeforeUnload,
      @Deprecated('Use onReceivedLoginRequest instead')
      super.androidOnReceivedLoginRequest,
      super.onReceivedLoginRequest,
      super.onPermissionRequestCanceled,
      super.onRequestFocus,
      @Deprecated('Use onWebContentProcessDidTerminate instead')
      super.iosOnWebContentProcessDidTerminate,
      super.onWebContentProcessDidTerminate,
      @Deprecated(
          'Use onDidReceiveServerRedirectForProvisionalNavigation instead')
      super.iosOnDidReceiveServerRedirectForProvisionalNavigation,
      super.onDidReceiveServerRedirectForProvisionalNavigation,
      @Deprecated('Use onNavigationResponse instead')
      super.iosOnNavigationResponse,
      super.onNavigationResponse,
      @Deprecated('Use shouldAllowDeprecatedTLS instead')
      super.iosShouldAllowDeprecatedTLS,
      super.shouldAllowDeprecatedTLS,
      super.onCameraCaptureStateChanged,
      super.onMicrophoneCaptureStateChanged,
      super.onContentSizeChanged,
      super.initialUrlRequest,
      super.initialFile,
      super.initialData,
      @Deprecated('Use initialSettings instead') super.initialOptions,
      super.initialSettings,
      super.contextMenu,
      super.initialUserScripts,
      this.pullToRefreshController,
      this.findInteractionController});

  /// Constructs a [IOSInAppWebViewWidgetCreationParams] using a
  /// [PlatformInAppWebViewWidgetCreationParams].
  IOSInAppWebViewWidgetCreationParams.fromPlatformInAppWebViewWidgetCreationParams(
      PlatformInAppWebViewWidgetCreationParams params)
      : this(
            controllerFromPlatform: params.controllerFromPlatform,
            key: params.key,
            layoutDirection: params.layoutDirection,
            gestureRecognizers: params.gestureRecognizers,
            headlessWebView: params.headlessWebView,
            keepAlive: params.keepAlive,
            preventGestureDelay: params.preventGestureDelay,
            windowId: params.windowId,
            onWebViewCreated: params.onWebViewCreated,
            onLoadStart: params.onLoadStart,
            onLoadStop: params.onLoadStop,
            onLoadError: params.onLoadError,
            onReceivedError: params.onReceivedError,
            onLoadHttpError: params.onLoadHttpError,
            onReceivedHttpError: params.onReceivedHttpError,
            onProgressChanged: params.onProgressChanged,
            onConsoleMessage: params.onConsoleMessage,
            shouldOverrideUrlLoading: params.shouldOverrideUrlLoading,
            onLoadResource: params.onLoadResource,
            onScrollChanged: params.onScrollChanged,
            onDownloadStart: params.onDownloadStart,
            onDownloadStartRequest: params.onDownloadStartRequest,
            onLoadResourceCustomScheme: params.onLoadResourceCustomScheme,
            onLoadResourceWithCustomScheme:
                params.onLoadResourceWithCustomScheme,
            onCreateWindow: params.onCreateWindow,
            onCloseWindow: params.onCloseWindow,
            onJsAlert: params.onJsAlert,
            onJsConfirm: params.onJsConfirm,
            onJsPrompt: params.onJsPrompt,
            onReceivedHttpAuthRequest: params.onReceivedHttpAuthRequest,
            onReceivedServerTrustAuthRequest:
                params.onReceivedServerTrustAuthRequest,
            onReceivedClientCertRequest: params.onReceivedClientCertRequest,
            onFindResultReceived: params.onFindResultReceived,
            shouldInterceptAjaxRequest: params.shouldInterceptAjaxRequest,
            onAjaxReadyStateChange: params.onAjaxReadyStateChange,
            onAjaxProgress: params.onAjaxProgress,
            shouldInterceptFetchRequest: params.shouldInterceptFetchRequest,
            onUpdateVisitedHistory: params.onUpdateVisitedHistory,
            onPrint: params.onPrint,
            onPrintRequest: params.onPrintRequest,
            onLongPressHitTestResult: params.onLongPressHitTestResult,
            onEnterFullscreen: params.onEnterFullscreen,
            onExitFullscreen: params.onExitFullscreen,
            onPageCommitVisible: params.onPageCommitVisible,
            onTitleChanged: params.onTitleChanged,
            onWindowFocus: params.onWindowFocus,
            onWindowBlur: params.onWindowBlur,
            onOverScrolled: params.onOverScrolled,
            onZoomScaleChanged: params.onZoomScaleChanged,
            androidOnSafeBrowsingHit: params.androidOnSafeBrowsingHit,
            onSafeBrowsingHit: params.onSafeBrowsingHit,
            androidOnPermissionRequest: params.androidOnPermissionRequest,
            onPermissionRequest: params.onPermissionRequest,
            androidOnGeolocationPermissionsShowPrompt:
                params.androidOnGeolocationPermissionsShowPrompt,
            onGeolocationPermissionsShowPrompt:
                params.onGeolocationPermissionsShowPrompt,
            androidOnGeolocationPermissionsHidePrompt:
                params.androidOnGeolocationPermissionsHidePrompt,
            onGeolocationPermissionsHidePrompt:
                params.onGeolocationPermissionsHidePrompt,
            androidShouldInterceptRequest: params.androidShouldInterceptRequest,
            shouldInterceptRequest: params.shouldInterceptRequest,
            androidOnRenderProcessGone: params.androidOnRenderProcessGone,
            onRenderProcessGone: params.onRenderProcessGone,
            androidOnRenderProcessResponsive:
                params.androidOnRenderProcessResponsive,
            onRenderProcessResponsive: params.onRenderProcessResponsive,
            androidOnRenderProcessUnresponsive:
                params.androidOnRenderProcessUnresponsive,
            onRenderProcessUnresponsive: params.onRenderProcessUnresponsive,
            androidOnFormResubmission: params.androidOnFormResubmission,
            onFormResubmission: params.onFormResubmission,
            androidOnScaleChanged: params.androidOnScaleChanged,
            androidOnReceivedIcon: params.androidOnReceivedIcon,
            onReceivedIcon: params.onReceivedIcon,
            androidOnReceivedTouchIconUrl: params.androidOnReceivedTouchIconUrl,
            onReceivedTouchIconUrl: params.onReceivedTouchIconUrl,
            androidOnJsBeforeUnload: params.androidOnJsBeforeUnload,
            onJsBeforeUnload: params.onJsBeforeUnload,
            androidOnReceivedLoginRequest: params.androidOnReceivedLoginRequest,
            onReceivedLoginRequest: params.onReceivedLoginRequest,
            onPermissionRequestCanceled: params.onPermissionRequestCanceled,
            onRequestFocus: params.onRequestFocus,
            iosOnWebContentProcessDidTerminate:
                params.iosOnWebContentProcessDidTerminate,
            onWebContentProcessDidTerminate:
                params.onWebContentProcessDidTerminate,
            iosOnDidReceiveServerRedirectForProvisionalNavigation:
                params.iosOnDidReceiveServerRedirectForProvisionalNavigation,
            onDidReceiveServerRedirectForProvisionalNavigation:
                params.onDidReceiveServerRedirectForProvisionalNavigation,
            iosOnNavigationResponse: params.iosOnNavigationResponse,
            onNavigationResponse: params.onNavigationResponse,
            iosShouldAllowDeprecatedTLS: params.iosShouldAllowDeprecatedTLS,
            shouldAllowDeprecatedTLS: params.shouldAllowDeprecatedTLS,
            onCameraCaptureStateChanged: params.onCameraCaptureStateChanged,
            onMicrophoneCaptureStateChanged:
                params.onMicrophoneCaptureStateChanged,
            onContentSizeChanged: params.onContentSizeChanged,
            initialUrlRequest: params.initialUrlRequest,
            initialFile: params.initialFile,
            initialData: params.initialData,
            initialOptions: params.initialOptions,
            initialSettings: params.initialSettings,
            contextMenu: params.contextMenu,
            initialUserScripts: params.initialUserScripts,
            pullToRefreshController: params.pullToRefreshController
                as IOSPullToRefreshController?,
            findInteractionController: params.findInteractionController
                as IOSFindInteractionController?);

  @override
  final IOSFindInteractionController? findInteractionController;

  @override
  final IOSPullToRefreshController? pullToRefreshController;
}

///{@template flutter_inappwebview.InAppWebView}
///Flutter Widget for adding an **inline native WebView** integrated in the flutter widget tree.
///
///**Supported Platforms/Implementations**:
///- IOS native WebView
///- iOS
///- Web
///{@endtemplate}
class IOSInAppWebViewWidget extends PlatformInAppWebViewWidget {
  /// Constructs a [IOSInAppWebViewWidget].
  IOSInAppWebViewWidget(PlatformInAppWebViewWidgetCreationParams params)
      : super.implementation(
          params is IOSInAppWebViewWidgetCreationParams
              ? params
              : IOSInAppWebViewWidgetCreationParams
                  .fromPlatformInAppWebViewWidgetCreationParams(params),
        );

  IOSInAppWebViewWidgetCreationParams get _iosParams =>
      params as IOSInAppWebViewWidgetCreationParams;

  IOSInAppWebViewController? _controller;

  IOSHeadlessInAppWebView? get _iosHeadlessInAppWebView =>
      _iosParams.headlessWebView as IOSHeadlessInAppWebView?;

  @override
  Widget build(BuildContext context) {
    final initialSettings =
        _iosParams.initialSettings ?? InAppWebViewSettings();
    _inferInitialSettings(initialSettings);

    Map<String, dynamic> settingsMap = (_iosParams.initialSettings != null
            ? initialSettings.toMap()
            : null) ??
        // ignore: deprecated_member_use_from_same_package
        _iosParams.initialOptions?.toMap() ??
        initialSettings.toMap();

    Map<String, dynamic> pullToRefreshSettings =
        _iosParams.pullToRefreshController?.params.settings.toMap() ??
            // ignore: deprecated_member_use_from_same_package
            _iosParams.pullToRefreshController?.params.options.toMap() ??
            PullToRefreshSettings(enabled: false).toMap();

    if ((_iosParams.headlessWebView?.isRunning() ?? false) &&
        _iosParams.keepAlive != null) {
      final headlessId = _iosParams.headlessWebView?.id;
      if (headlessId != null) {
        // force keep alive id to match headless webview id
        _iosParams.keepAlive?.id = headlessId;
      }
    }

    return UiKitView(
      viewType: 'com.pichillilorenzo/flutter_inappwebview',
      onPlatformViewCreated: _onPlatformViewCreated,
      gestureRecognizers: _iosParams.gestureRecognizers,
      creationParams: <String, dynamic>{
        'initialUrlRequest': _iosParams.initialUrlRequest?.toMap(),
        'initialFile': _iosParams.initialFile,
        'initialData': _iosParams.initialData?.toMap(),
        'initialSettings': settingsMap,
        'contextMenu': _iosParams.contextMenu?.toMap() ?? {},
        'windowId': _iosParams.windowId,
        'headlessWebViewId': _iosParams.headlessWebView?.isRunning() ?? false
            ? _iosParams.headlessWebView?.id
            : null,
        'initialUserScripts':
        _iosParams.initialUserScripts?.map((e) => e.toMap()).toList() ?? [],
        'pullToRefreshSettings': pullToRefreshSettings,
        'keepAliveId': _iosParams.keepAlive?.id,
        'preventGestureDelay': _iosParams.preventGestureDelay
      },
      creationParamsCodec: const StandardMessageCodec(),
    );
  }

  void _onPlatformViewCreated(int id) {
    dynamic viewId = id;
    if (!kIsWeb) {
      if (_iosParams.headlessWebView?.isRunning() ?? false) {
        viewId = _iosParams.headlessWebView?.id;
      }
      viewId = _iosParams.keepAlive?.id ?? viewId ?? id;
    }
    _iosHeadlessInAppWebView?.internalDispose();
    _controller = IOSInAppWebViewController(
        PlatformInAppWebViewControllerCreationParams(
            id: viewId, webviewParams: params));
    _iosParams.pullToRefreshController?.init(viewId);
    _iosParams.findInteractionController?.init(viewId);
    debugLog(
        className: runtimeType.toString(),
        id: viewId?.toString(),
        debugLoggingSettings:
            PlatformInAppWebViewController.debugLoggingSettings,
        method: "onWebViewCreated",
        args: []);
    if (_iosParams.onWebViewCreated != null) {
      _iosParams.onWebViewCreated!(
          params.controllerFromPlatform?.call(_controller!) ?? _controller!);
    }
  }

  void _inferInitialSettings(InAppWebViewSettings settings) {
    if (_iosParams.shouldOverrideUrlLoading != null &&
        settings.useShouldOverrideUrlLoading == null) {
      settings.useShouldOverrideUrlLoading = true;
    }
    if (_iosParams.onLoadResource != null &&
        settings.useOnLoadResource == null) {
      settings.useOnLoadResource = true;
    }
    if (_iosParams.onDownloadStartRequest != null &&
        settings.useOnDownloadStart == null) {
      settings.useOnDownloadStart = true;
    }
    if (_iosParams.shouldInterceptAjaxRequest != null &&
        settings.useShouldInterceptAjaxRequest == null) {
      settings.useShouldInterceptAjaxRequest = true;
    }
    if (_iosParams.shouldInterceptFetchRequest != null &&
        settings.useShouldInterceptFetchRequest == null) {
      settings.useShouldInterceptFetchRequest = true;
    }
    if (_iosParams.shouldInterceptRequest != null &&
        settings.useShouldInterceptRequest == null) {
      settings.useShouldInterceptRequest = true;
    }
    if (_iosParams.onRenderProcessGone != null &&
        settings.useOnRenderProcessGone == null) {
      settings.useOnRenderProcessGone = true;
    }
    if (_iosParams.onNavigationResponse != null &&
        settings.useOnNavigationResponse == null) {
      settings.useOnNavigationResponse = true;
    }
  }

  @override
  void dispose() {
    dynamic viewId = _controller?.getViewId();
    debugLog(
        className: runtimeType.toString(),
        id: viewId?.toString(),
        debugLoggingSettings:
            PlatformInAppWebViewController.debugLoggingSettings,
        method: "dispose",
        args: []);
    final isKeepAlive = _iosParams.keepAlive != null;
    _controller?.dispose(isKeepAlive: isKeepAlive);
    _controller = null;
    _iosParams.pullToRefreshController?.dispose(isKeepAlive: isKeepAlive);
    _iosParams.findInteractionController?.dispose(isKeepAlive: isKeepAlive);
  }

  @override
  T controllerFromPlatform<T>(PlatformInAppWebViewController controller) {
    // unused
    throw UnimplementedError();
  }
}