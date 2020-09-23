Pod::Spec.new do |s|
  s.name         = "Sentry"
  s.version      = "6.0.0-fix-umbrella-header"
  s.summary      = "Sentry client for cocoa"
  s.homepage     = "https://github.com/getsentry/sentry-cocoa"
  s.license      = "mit"
  s.authors      = "Sentry"
  s.source       = { :git => "https://github.com/getsentry/sentry-cocoa.git",
                     :tag => s.version.to_s }

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  s.module_name  = "Sentry"
  s.requires_arc = true
  s.frameworks = 'Foundation'
  s.libraries = 'z', 'c++'
  s.xcconfig = { 'GCC_ENABLE_CPP_EXCEPTIONS' => 'YES' }

  s.default_subspecs = ['Core']

  s.subspec 'Core' do |sp|
      sp.source_files = "Sources/Sentry/**/*.{h,m}",
        "Sources/SentryCrash/**/*.{h,m,mm,c,cpp}"
        
      sp.public_header_files =
        "Sources/Sentry/include/Sentry.h",
        "Sources/Sentry/include/SentryBreadcrumb.h",
        "Sources/Sentry/include/SentryBreadcrumbTracker.h", # we should be able to remove this
        "Sources/Sentry/include/SentryClient.h",
        "Sources/Sentry/include/SentryCrashExceptionApplication.h",
        "Sources/Sentry/include/SentryDebugMeta.h",
        "Sources/Sentry/include/SentryDefines.h",
        "Sources/Sentry/include/SentryDsn.h",
        "Sources/Sentry/include/SentryEnvelope.h",
        "Sources/Sentry/include/SentryEnvelopeItemType.h",
        "Sources/Sentry/include/SentryError.h",
        "Sources/Sentry/include/SentryEvent.h",
        "Sources/Sentry/include/SentryException.h",
        "Sources/Sentry/include/SentryFrame.h",
        "Sources/Sentry/include/SentryHub.h",
        "Sources/Sentry/include/SentryId.h",
        "Sources/Sentry/include/SentryInstallation.h", # we should be able to remove this
        "Sources/Sentry/include/SentryIntegrationProtocol.h",
        "Sources/Sentry/include/SentryMechanism.h",
        "Sources/Sentry/include/SentryOptions.h",
        "Sources/Sentry/include/SentrySDK.h",
        "Sources/Sentry/include/SentryScope.h",
        "Sources/Sentry/include/SentrySerializable.h",
        "Sources/Sentry/include/SentrySession.h",
        "Sources/Sentry/include/SentryStacktrace.h",
        "Sources/Sentry/include/SentryThread.h",
        "Sources/Sentry/include/SentryUser.h"
        
  end
end
