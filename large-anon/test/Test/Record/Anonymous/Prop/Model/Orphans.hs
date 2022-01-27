{-# OPTIONS -Wno-orphans #-}

module Test.Record.Anonymous.Prop.Model.Orphans () where

import Data.SOP.BasicFunctors

import Test.QuickCheck

instance Arbitrary a => Arbitrary (K a b) where
  arbitrary    = K <$> arbitrary
  shrink (K a) = K <$> shrink a