{-
Copyright 2015 SlamData, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-}

module Notebook.Cell.API.Component.State
  ( State()
  , initialState
  , StateP()
  ) where

import Prelude

import Halogen

import Notebook.Cell.Common.EvalQuery as NC
import Notebook.Common (Slam())
import Notebook.FormBuilder.Component as FB

type State = {}

initialState :: State
initialState = {}

type StateP =
  InstalledState
    State
    (FB.StateP Slam)
    NC.CellEvalQuery
    FB.QueryP
    Slam
    Unit