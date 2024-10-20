resource "google_billing_budget" "budget" {
  billing_account = data.google_billing_account.billing_account.id
  display_name    = "Monthly Budget Alert"
  amount {
    specified_amount {
      currency_code = var.billing_alert_currency_code
      units         = var.billing_alert_amount
    }
  }
  threshold_rules {
    threshold_percent = 0.5
  }

  threshold_rules {
    threshold_percent = 0.9
  }

  threshold_rules {
    threshold_percent = 1
  }

  threshold_rules {
    threshold_percent = 1.5
  }
}
