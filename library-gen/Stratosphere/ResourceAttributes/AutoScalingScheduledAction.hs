{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | To specify how AWS CloudFormation handles updates for the MinSize,
-- MaxSize, and DesiredCapacity properties when the
-- AWS::AutoScaling::AutoScalingGroup resource has an associated scheduled
-- action, use the AutoScalingScheduledAction policy. With scheduled actions,
-- the group size properties of an Auto Scaling group can change at any time.
-- When you update a stack with an Auto Scaling group and scheduled action,
-- AWS CloudFormation always sets the group size property values of your Auto
-- Scaling group to the values that are defined in the
-- AWS::AutoScaling::AutoScalingGroup resource of your template, even if a
-- scheduled action is in effect. If you do not want AWS CloudFormation to
-- change any of the group size property values when you have a scheduled
-- action in effect, use the AutoScalingScheduledAction update policy to
-- prevent AWS CloudFormation from changing the MinSize, MaxSize, or
-- DesiredCapacity properties unless you have modified these values in your
-- template.

module Stratosphere.ResourceAttributes.AutoScalingScheduledAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingScheduledAction. See
-- 'autoScalingScheduledAction' for a more convenient constructor.
data AutoScalingScheduledAction =
  AutoScalingScheduledAction
  { _autoScalingScheduledActionIgnoreUnmodifiedGroupSizeProperties :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON AutoScalingScheduledAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON AutoScalingScheduledAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'AutoScalingScheduledAction' containing required fields
-- as arguments.
autoScalingScheduledAction
  :: AutoScalingScheduledAction
autoScalingScheduledAction  =
  AutoScalingScheduledAction
  { _autoScalingScheduledActionIgnoreUnmodifiedGroupSizeProperties = Nothing
  }

-- | Specifies whether AWS CloudFormation ignores differences in group size
-- properties between your current Auto Scaling group and the Auto Scaling
-- group described in the AWS::AutoScaling::AutoScalingGroup resource of your
-- template during a stack update. If you modify any of the group size
-- property values in your template, AWS CloudFormation uses the modified
-- values and updates your Auto Scaling group.
assaIgnoreUnmodifiedGroupSizeProperties :: Lens' AutoScalingScheduledAction (Maybe (Val Bool'))
assaIgnoreUnmodifiedGroupSizeProperties = lens _autoScalingScheduledActionIgnoreUnmodifiedGroupSizeProperties (\s a -> s { _autoScalingScheduledActionIgnoreUnmodifiedGroupSizeProperties = a })