-----------------------------------------------------------------------------
-- | Module     :  Control.Monad.Trans.Chronicle
--
-- The 'ChronicleT' monad, a hybrid error/writer monad that allows
-- both accumulating outputs and aborting computation with a final
-- output.
-----------------------------------------------------------------------------
module Control.Monad.Chronicle ( 
                               -- * Type class for Chronicle-style monads
                                 MonadChronicle(..)
                               -- * The ChronicleT monad transformer
                               , Chronicle, runChronicle, ChronicleT(..)
                               , module Data.Monoid
                               , module Control.Monad
                               , module Control.Monad.Trans
                               ) where

import Data.Monoid (Monoid(..))

import Control.Monad
import Control.Monad.Trans
import Control.Monad.Trans.Chronicle (Chronicle)
import Control.Monad.Chronicle.Class
