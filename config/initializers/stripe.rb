Rails.configuration.stripe = {
  :publishable_key => 'pk_test_LQiF7Y4BF0rTHeTdYYADSXBb',
  :secret_key => 'sk_test_XQ1jx0jB6vjk50gb85GWBbNA'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
