# This file is automatically created by Recurly's OpenAPI generation process
# and thus any edits you make by hand will be lost. If you wish to make a
# change to this file, please create a Github issue explaining the changes you
# need and we will usher them to the appropriate places.
module Recurly
  module Requests
    class SubscriptionAddOnCreate < Request

      # @!attribute add_on_source
      #   @return [String] Used to determine where the associated add-on data is pulled from. If this value is set to `plan_add_on` or left blank, then add_on data will be pulled from the plan's add-ons. If the associated `plan` has `allow_any_item_on_subscriptions` set to `true` and this field is set to `item`, then the associated add-on data will be pulled from the site's item catalog.
      define_attribute :add_on_source, String

      # @!attribute code
      #   @return [String] If `add_on_source` is set to `plan_add_on` or left blank, then plan's add-on `code` should be used. If `add_on_source` is set to `item`, then the `code` from the associated item should be used.
      define_attribute :code, String

      # @!attribute quantity
      #   @return [Integer] Quantity
      define_attribute :quantity, Integer

      # @!attribute revenue_schedule_type
      #   @return [String] Revenue schedule type
      define_attribute :revenue_schedule_type, String

      # @!attribute tiers
      #   @return [Array[SubscriptionAddOnTier]] If the plan add-on's `tier_type` is `flat`, then `tiers` must be absent. The `tiers` object must include one to many tiers with `ending_quantity` and `unit_amount`. There must be one tier with an `ending_quantity` of 999999999 which is the default if not provided.
      define_attribute :tiers, Array, { :item_type => :SubscriptionAddOnTier }

      # @!attribute unit_amount
      #   @return [Float] * Optionally, override the add-on's default unit amount. * If the plan add-on's `tier_type` is `tiered`, `volume`, or `stairstep`, then `unit_amount` must be absent.
      define_attribute :unit_amount, Float
    end
  end
end
