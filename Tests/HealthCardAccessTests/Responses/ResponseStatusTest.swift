//
// Copyright (Change Date see Readme), gematik GmbH
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// *******
//
// For additional notes and disclaimer from gematik and in case of changes by gematik find details in the "Readme" file.
//

@testable import HealthCardAccess
import Nimble
import XCTest

final class ResponseStatusTest: XCTestCase {
    func testEquatable() {
        let allCases = ResponseStatus.allEnumCases

        for (lhsIndex, lhs) in allCases.enumerated() {
            expect(lhs) == lhs

            for (rhsIndex, rhs) in allCases.enumerated() {
                if lhsIndex == rhsIndex {
                    expect(lhs) == rhs
                } else {
                    expect(lhs) != rhs
                }
            }
        }

        expect(ResponseStatus.unknownError(0x1234)) == .unknownError(0x1234)
        expect(ResponseStatus.unknownError(0x1234)) != .unknownError(0x5678)
    }

    static let allTests = [
        ("testEquatable", testEquatable),
    ]
}

extension ResponseStatus {
    // Avoid using CaseIterable since Extension declares a conformance of imported type 'ResponseStatus' to imported protocol 'CaseIterable'; this will not behave correctly if the owners of 'HealthCardAccess' introduce this conformance in the future
    static var allEnumCases: [ResponseStatus] {
        [
            .success,
            .unknownException,
            .unknownStatus,
            .dataTruncated,
            .corruptDataWarning,
            .endOfFileWarning,
            .endOfRecordWarning,
            .unsuccessfulSearch,
            .fileDeactivated,
            .fileTerminated,
            .recordDeactivated,
            .transportStatusTransportPin,
            .transportStatusEmptyPin,
            .passwordDisabled,
            .authenticationFailure,
            .noAuthentication,
            .retryCounterCount00,
            .retryCounterCount01,
            .retryCounterCount02,
            .retryCounterCount03,
            .retryCounterCount04,
            .retryCounterCount05,
            .retryCounterCount06,
            .retryCounterCount07,
            .retryCounterCount08,
            .retryCounterCount09,
            .retryCounterCount10,
            .retryCounterCount11,
            .retryCounterCount12,
            .retryCounterCount13,
            .retryCounterCount14,
            .retryCounterCount15,
            .updateRetryWarningCount00,
            .updateRetryWarningCount01,
            .updateRetryWarningCount02,
            .updateRetryWarningCount03,
            .updateRetryWarningCount04,
            .updateRetryWarningCount05,
            .updateRetryWarningCount06,
            .updateRetryWarningCount07,
            .updateRetryWarningCount08,
            .updateRetryWarningCount09,
            .updateRetryWarningCount10,
            .updateRetryWarningCount11,
            .updateRetryWarningCount12,
            .updateRetryWarningCount13,
            .updateRetryWarningCount14,
            .updateRetryWarningCount15,
            .wrongSecretWarningCount00,
            .wrongSecretWarningCount01,
            .wrongSecretWarningCount02,
            .wrongSecretWarningCount03,
            .wrongSecretWarningCount04,
            .wrongSecretWarningCount05,
            .wrongSecretWarningCount06,
            .wrongSecretWarningCount07,
            .wrongSecretWarningCount08,
            .wrongSecretWarningCount09,
            .wrongSecretWarningCount10,
            .wrongSecretWarningCount11,
            .wrongSecretWarningCount12,
            .wrongSecretWarningCount13,
            .wrongSecretWarningCount14,
            .wrongSecretWarningCount15,
            .encipherError,
            .keyInvalid,
            .objectTerminated,
            .parameterMismatch,
            .memoryFailure,
            .wrongRecordLength,
            .channelClosed,
            .noMoreChannelsAvailable,
            .volatileKeyWithoutLcs,
            .wrongFileType,
            .securityStatusNotSatisfied,
            .commandBlocked,
            .keyExpired,
            .passwordBlocked,
            .keyAlreadyPresent,
            .noKeyReference,
            .noPrkReference,
            .noPukReference,
            .noRandom,
            .noRecordLifeCycleStatus,
            .passwordNotUsable,
            .wrongRandomLength,
            .wrongRandomOrNoKeyReference,
            .wrongPasswordLength,
            .noCurrentEf,
            .incorrectSmDo,
            .newFileSizeWrong,
            .numberPreconditionWrong,
            .numberScenarioWrong,
            .verificationError,
            .wrongCipherText,
            .wrongToken,
            .unsupportedFunction,
            .fileNotFound,
            .recordNotFound,
            .dataTooBig,
            .fullRecordList,
            .messageTooLong,
            .outOfMemory,
            .fullRecordListOrOutOfMemory,
            .inconsistentKeyReference,
            .wrongKeyReference,
            .keyNotFound,
            .keyOrPrkNotFound,
            .keyOrPwdNotFound,
            .passwordNotFound,
            .prkNotFound,
            .pukNotFound,
            .duplicatedObjects,
            .dfNameExists,
            .offsetTooBig,
            .instructionNotSupported,
            .customError,
            .ok,
            .unknownError(0x1234)
        ]
    }
}
