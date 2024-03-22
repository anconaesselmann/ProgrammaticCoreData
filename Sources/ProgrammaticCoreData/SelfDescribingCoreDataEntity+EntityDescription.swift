//  Created by Axel Ancona Esselmann on 3/22/24.
//

import CoreData

public extension SelfDescribingCoreDataEntity {
    static func description<A0>(
        _ a0: EntityDescriptionAttribute<Self, A0>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [a0.nsPropertyDescription])
    }

    static func description<A0, A1>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>,
        _ a19: EntityDescriptionAttribute<Self, A19>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription,
                a19.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>,
        _ a19: EntityDescriptionAttribute<Self, A19>,
        _ a20: EntityDescriptionAttribute<Self, A20>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription,
                a19.nsPropertyDescription,
                a20.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>,
        _ a19: EntityDescriptionAttribute<Self, A19>,
        _ a20: EntityDescriptionAttribute<Self, A20>,
        _ a21: EntityDescriptionAttribute<Self, A21>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription,
                a19.nsPropertyDescription,
                a20.nsPropertyDescription,
                a21.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>,
        _ a19: EntityDescriptionAttribute<Self, A19>,
        _ a20: EntityDescriptionAttribute<Self, A20>,
        _ a21: EntityDescriptionAttribute<Self, A21>,
        _ a22: EntityDescriptionAttribute<Self, A22>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription,
                a19.nsPropertyDescription,
                a20.nsPropertyDescription,
                a21.nsPropertyDescription,
                a22.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22, A23>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>,
        _ a19: EntityDescriptionAttribute<Self, A19>,
        _ a20: EntityDescriptionAttribute<Self, A20>,
        _ a21: EntityDescriptionAttribute<Self, A21>,
        _ a22: EntityDescriptionAttribute<Self, A22>,
        _ a23: EntityDescriptionAttribute<Self, A23>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription,
                a19.nsPropertyDescription,
                a20.nsPropertyDescription,
                a21.nsPropertyDescription,
                a22.nsPropertyDescription,
                a23.nsPropertyDescription
            ]
        )
    }

    static func description<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22, A23, A24>(
        _ a0: EntityDescriptionAttribute<Self, A0>,
        _ a1: EntityDescriptionAttribute<Self, A1>,
        _ a2: EntityDescriptionAttribute<Self, A2>,
        _ a3: EntityDescriptionAttribute<Self, A3>,
        _ a4: EntityDescriptionAttribute<Self, A4>,
        _ a5: EntityDescriptionAttribute<Self, A5>,
        _ a6: EntityDescriptionAttribute<Self, A6>,
        _ a7: EntityDescriptionAttribute<Self, A7>,
        _ a8: EntityDescriptionAttribute<Self, A8>,
        _ a9: EntityDescriptionAttribute<Self, A9>,
        _ a10: EntityDescriptionAttribute<Self, A10>,
        _ a11: EntityDescriptionAttribute<Self, A11>,
        _ a12: EntityDescriptionAttribute<Self, A12>,
        _ a13: EntityDescriptionAttribute<Self, A13>,
        _ a14: EntityDescriptionAttribute<Self, A14>,
        _ a15: EntityDescriptionAttribute<Self, A15>,
        _ a16: EntityDescriptionAttribute<Self, A16>,
        _ a17: EntityDescriptionAttribute<Self, A17>,
        _ a18: EntityDescriptionAttribute<Self, A18>,
        _ a19: EntityDescriptionAttribute<Self, A19>,
        _ a20: EntityDescriptionAttribute<Self, A20>,
        _ a21: EntityDescriptionAttribute<Self, A21>,
        _ a22: EntityDescriptionAttribute<Self, A22>,
        _ a23: EntityDescriptionAttribute<Self, A23>,
        _ a24: EntityDescriptionAttribute<Self, A24>
    ) -> NSEntityDescription {
        NSEntityDescription(Self.self, properties: [
                a0.nsPropertyDescription,
                a1.nsPropertyDescription,
                a2.nsPropertyDescription,
                a3.nsPropertyDescription,
                a4.nsPropertyDescription,
                a5.nsPropertyDescription,
                a6.nsPropertyDescription,
                a7.nsPropertyDescription,
                a8.nsPropertyDescription,
                a9.nsPropertyDescription,
                a10.nsPropertyDescription,
                a11.nsPropertyDescription,
                a12.nsPropertyDescription,
                a13.nsPropertyDescription,
                a14.nsPropertyDescription,
                a15.nsPropertyDescription,
                a16.nsPropertyDescription,
                a17.nsPropertyDescription,
                a18.nsPropertyDescription,
                a19.nsPropertyDescription,
                a20.nsPropertyDescription,
                a21.nsPropertyDescription,
                a22.nsPropertyDescription,
                a23.nsPropertyDescription,
                a24.nsPropertyDescription
            ]
        )
    }
}
