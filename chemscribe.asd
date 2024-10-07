;;;; chemscribe.asd

;;; Copyright 2024 Erik P Almaraz <erikalmaraz@fastmail.com>
;;;
;;; Licensed under the Apache License, Version 2.0 (the "License");
;;; you may not use this file except in compliance with the License.
;;; You may obtain a copy of the License at
;;;
;;;     http://www.apache.org/licenses/LICENSE-2.0
;;;
;;; Unless required by applicable law or agreed to in writing, software
;;; distributed under the License is distributed on an "AS IS" BASIS,
;;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;;; See the License for the specific language governing permissions and
;;; limitations under the License.

#-asdf3.1 (error "ChemScribe requires ASDF 3.1.2")

(defsystem "chemscribe"
  :version "0.0.1"
  :author "Erik P Almaraz"
  :license "Apache 2.0"
  :depends-on ("asdf"
               "bordeaux-threads"
               "lparallel"
               "slynk"
               "cl-json")
  :components ((:module "source"
                :components ((:file "package")
                             (:file "chemscribe"))))
  :description "Extensible Chemical Formula Builder with Regulatory Intelligence."
  :in-order-to ((test-op (test-op "chemscribe/tests"))))

(defsystem "chemscribe/tests"
  :author "Erik P Almaraz"
  :license "Apache 2.0"
  :depends-on ("chemscribe"
               "lisp-unit2")
  :components ((:module "tests"
                :components ((:file "package")
                             (:file "tests"))))
  :description "Unit tests system for ChemScribe."
  :perform (test-op (op c) (symbol-call :rove :run c)))
