/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.media;

import android.media.MediaCas;

/** @hide */
interface ICas {
    void setPrivateData(in byte[] pvtData);
    byte[] openSession();
    void closeSession(in byte[] sessionId);
    void setSessionPrivateData(in byte[] sessionId, in byte[] pvtData);
    void processEcm(in byte[] sessionId, in MediaCas.ParcelableCasData ecm);
    void processEmm(in MediaCas.ParcelableCasData emm);
    void sendEvent(int event, int arg, in @nullable byte[] eventData);
    void provision(String provisionString);
    void refreshEntitlements(int refreshType, in @nullable byte[] refreshData);
    void release();
}