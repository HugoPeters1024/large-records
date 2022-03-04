{-# LANGUAGE TypeApplications #-}

#if PROFILE_CORESIZE
{-# OPTIONS_GHC -ddump-to-file -ddump-ds-preopt -ddump-ds -ddump-simpl #-}
#endif
#if PROFILE_TIMING
{-# OPTIONS_GHC -ddump-to-file -ddump-timings #-}
#endif

module Experiment.ConstraintFamily_Shallow.Sized.R070 where

import Data.Proxy

import Experiment.ConstraintFamily_Shallow
import Infra.HList

import Common.HListOfSize.HL070

satisfyCF :: ()
satisfyCF = withCF (Proxy @(HList ExampleFields))