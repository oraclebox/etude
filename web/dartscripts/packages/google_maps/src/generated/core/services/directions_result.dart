// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

class DirectionsResult extends jsw.TypedJsObject {
  static DirectionsResult $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsResult.fromJsObject(jsObject);
  DirectionsResult.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsResult();

  set routes(List<DirectionsRoute> routes) => $unsafe['routes'] = routes == null ? null : (routes is jsw.TypedJsObject ? (routes as jsw.TypedJsObject).$unsafe : jsw.jsify(routes));
  List<DirectionsRoute> get routes => jsw.TypedJsArray.$wrapSerializables($unsafe['routes'], DirectionsRoute.$wrap);
}
