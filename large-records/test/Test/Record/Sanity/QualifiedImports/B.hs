{-# LANGUAGE ConstraintKinds           #-}
{-# LANGUAGE DataKinds                 #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE KindSignatures            #-}
{-# LANGUAGE MultiParamTypeClasses     #-}
{-# LANGUAGE ScopedTypeVariables       #-}
{-# LANGUAGE TypeFamilies              #-}
{-# LANGUAGE UndecidableInstances      #-}

{-# OPTIONS_GHC -fplugin=Data.Record.Plugin #-}

module Test.Record.Sanity.QualifiedImports.B (T(..)) where

import qualified Test.Record.Sanity.QualifiedImports.A as A

{-# ANN type T largeRecordStrict #-}
data T a = MkT { x :: Char, y :: A.T a }
