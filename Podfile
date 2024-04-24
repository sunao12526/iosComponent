# ignore all warnings from all pods
inhibit_all_warnings!
platform :ios, '12.0'

#disable some warnings
post_install do |installer|

    

    installer.pods_project.build_configurations.each do |config|
        # # warning 切 error 的开关
        config.build_settings['GCC_TREAT_WARNINGS_AS_ERRORS'] = 'YES'
 
        # # 关闭部分 warning
        config.build_settings['WARNING_CFLAGS'] ||= '-Wno-nullability-completeness'
        config.build_settings['CLANG_WARN_STRICT_PROTOTYPES'] = 'NO'
        config.build_settings['GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS'] = 'NO'
        config.build_settings['CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS'] = 'NO'
        config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        config.build_settings['GCC_WARN_UNUSED_VARIABLE'] = 'NO'
        config.build_settings['GCC_WARN_UNUSED_FUNCTION'] = 'NO'
        config.build_settings['CLANG_MIGRATOR_OBJC_DESIGNATED_INIT'] = 'NO'
        config.build_settings['CLANG_WARN_COMMA'] = 'NO'
        config.build_settings['CLANG_WARN_BOOL_CONVERSION'] = 'NO'
    end

    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            #disable some warnings of Pods
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
        end
    end
end

def commonPods
    #some 3rd party pods for demo
    pod 'AFNetworking'
    pod 'YYModel'
    pod 'SigmaTableViewModel'
end

def mediatorPods
    pod 'Bifrost' 
end

workspace "iosComponent.xcworkspace"

target "MainApp" do
    project 'MainApp/MainApp.xcodeproj'
    mediatorPods
end

#target "TestModuleA" do
#    project 'Modules/TestModuleA/TestModuleA.xcodeproj'
#    pod 'YYModel'
#end

target "Common" do
    project 'Modules/Common/Common.xcodeproj'
    commonPods
end
target "Mediator" do
    project 'Modules/Mediator/Mediator.xcodeproj'
    mediatorPods
end
 
