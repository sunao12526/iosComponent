# ignore all warnings from all pods
inhibit_all_warnings!
platform :ios, '8.0'


def commonPods()
    #some 3rd party pods for demo
    pod 'AFNetworking'
    pod 'YYModel'
    pod 'SigmaTableViewModel'
end

def mediatorPods()
    pod 'Bifrost' 
end

workspace "iosComponent.xcworkspace"
target "MainApp" do
    project 'MainApp/MainApp.xcodeproj'
#    commonPods()
#    mediatorPods()
    target "Common" do
        project 'Modules/Common/Common.xcodeproj'
        commonPods()
    end
    target "Mediator" do
        project 'Modules/Mediator/Mediator.xcodeproj'
        mediatorPods()
    end
end
