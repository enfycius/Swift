//
//  AppleStore.swift
//  AppleInc
//
//  Created by 김종혁 on 2023/06/22.
//

public enum DeviceModel {
    case iPhone12
    case iPhone12Mini
    case iPhone12Pro
    case iPhone12ProMax
}

public class AppleiPhone {
    public let model: DeviceModel
    
    fileprivate init(model: DeviceModel) {
        self.model = model
    }
}

fileprivate class Factory {
    func makeiPhone(ofModel model: DeviceModel) -> AppleiPhone {
        return AppleiPhone(model: model)
    }
}


public class AppleStore {
    private var factory = Factory()
    
    public func selliPhone(ofModel model: DeviceModel) -> AppleiPhone {
        
        return factory.makeiPhone(ofModel: model)
    }
}
