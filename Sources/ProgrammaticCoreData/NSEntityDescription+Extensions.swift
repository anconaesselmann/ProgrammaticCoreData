//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public extension NSEntityDescription {

    convenience init<EntityType>(_ type: EntityType.Type)
        where EntityType: AnyObject
    {
        self.init()
        let name = NSStringFromClass(type)
        self.name = name
        self.managedObjectClassName = name
    }

    convenience init<EntityType, A0>(
        _ type: EntityType.Type,
        properties
            a0: EntityDescriptionAttribute<EntityType, A0>
    )
        where EntityType: AnyObject
    {
        self.init(type, properties: [a0.nsAttributeType])
    }

    convenience init<EntityType, A0, A1>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>,
        _ a19: EntityDescriptionAttribute<EntityType, A19>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType,
                a19.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>,
        _ a19: EntityDescriptionAttribute<EntityType, A19>,
        _ a20: EntityDescriptionAttribute<EntityType, A20>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType,
                a19.nsAttributeType,
                a20.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>,
        _ a19: EntityDescriptionAttribute<EntityType, A19>,
        _ a20: EntityDescriptionAttribute<EntityType, A20>,
        _ a21: EntityDescriptionAttribute<EntityType, A21>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType,
                a19.nsAttributeType,
                a20.nsAttributeType,
                a21.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>,
        _ a19: EntityDescriptionAttribute<EntityType, A19>,
        _ a20: EntityDescriptionAttribute<EntityType, A20>,
        _ a21: EntityDescriptionAttribute<EntityType, A21>,
        _ a22: EntityDescriptionAttribute<EntityType, A22>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType,
                a19.nsAttributeType,
                a20.nsAttributeType,
                a21.nsAttributeType,
                a22.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22, A23>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>,
        _ a19: EntityDescriptionAttribute<EntityType, A19>,
        _ a20: EntityDescriptionAttribute<EntityType, A20>,
        _ a21: EntityDescriptionAttribute<EntityType, A21>,
        _ a22: EntityDescriptionAttribute<EntityType, A22>,
        _ a23: EntityDescriptionAttribute<EntityType, A23>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType,
                a19.nsAttributeType,
                a20.nsAttributeType,
                a21.nsAttributeType,
                a22.nsAttributeType,
                a23.nsAttributeType
            ]
        )
    }

    convenience init<EntityType, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22, A23, A24>(
        _ type: EntityType.Type,
        properties
          a0: EntityDescriptionAttribute<EntityType, A0>,
        _ a1: EntityDescriptionAttribute<EntityType, A1>,
        _ a2: EntityDescriptionAttribute<EntityType, A2>,
        _ a3: EntityDescriptionAttribute<EntityType, A3>,
        _ a4: EntityDescriptionAttribute<EntityType, A4>,
        _ a5: EntityDescriptionAttribute<EntityType, A5>,
        _ a6: EntityDescriptionAttribute<EntityType, A6>,
        _ a7: EntityDescriptionAttribute<EntityType, A7>,
        _ a8: EntityDescriptionAttribute<EntityType, A8>,
        _ a9: EntityDescriptionAttribute<EntityType, A9>,
        _ a10: EntityDescriptionAttribute<EntityType, A10>,
        _ a11: EntityDescriptionAttribute<EntityType, A11>,
        _ a12: EntityDescriptionAttribute<EntityType, A12>,
        _ a13: EntityDescriptionAttribute<EntityType, A13>,
        _ a14: EntityDescriptionAttribute<EntityType, A14>,
        _ a15: EntityDescriptionAttribute<EntityType, A15>,
        _ a16: EntityDescriptionAttribute<EntityType, A16>,
        _ a17: EntityDescriptionAttribute<EntityType, A17>,
        _ a18: EntityDescriptionAttribute<EntityType, A18>,
        _ a19: EntityDescriptionAttribute<EntityType, A19>,
        _ a20: EntityDescriptionAttribute<EntityType, A20>,
        _ a21: EntityDescriptionAttribute<EntityType, A21>,
        _ a22: EntityDescriptionAttribute<EntityType, A22>,
        _ a23: EntityDescriptionAttribute<EntityType, A23>,
        _ a24: EntityDescriptionAttribute<EntityType, A24>
    )
        where EntityType: AnyObject
    {
        self.init(
            type,
            properties: [
                a0.nsAttributeType,
                a1.nsAttributeType,
                a2.nsAttributeType,
                a3.nsAttributeType,
                a4.nsAttributeType,
                a5.nsAttributeType,
                a6.nsAttributeType,
                a7.nsAttributeType,
                a8.nsAttributeType,
                a9.nsAttributeType,
                a10.nsAttributeType,
                a11.nsAttributeType,
                a12.nsAttributeType,
                a13.nsAttributeType,
                a14.nsAttributeType,
                a15.nsAttributeType,
                a16.nsAttributeType,
                a17.nsAttributeType,
                a18.nsAttributeType,
                a19.nsAttributeType,
                a20.nsAttributeType,
                a21.nsAttributeType,
                a22.nsAttributeType,
                a23.nsAttributeType,
                a24.nsAttributeType
            ]
        )
    }

    private convenience init<EntityType>(
        _ type: EntityType.Type,
        properties : [NSAttributeDescription]
    )
        where EntityType: AnyObject
    {
        self.init()
        let name = NSStringFromClass(type)
        self.name = name
        self.managedObjectClassName = name
        self.properties = properties
    }
}
