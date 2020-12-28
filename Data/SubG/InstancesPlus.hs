-- |
-- Module      :  Data.SubG.InstancesPlus
-- Copyright   :  (c) OleksandrZhabenko 2020
-- License     :  MIT
-- Stability   :  Experimental
-- Maintainer  :  olexandr543@yahoo.com
--
-- Additional instances for the InsertLeft class from Data.SubG module. Use
-- additional dependencies comparing to the package @subG@.

{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}

module Data.SubG.InstancesPlus where

import qualified Data.Vector as VB
import Data.SubG

-- | Is taken from the @phonetic-languages-common@ package to reduce the dependencies of the subG package to just base.
instance (Eq a) => InsertLeft VB.Vector a where
  (%@) = VB.cons
  (%^) = VB.cons

