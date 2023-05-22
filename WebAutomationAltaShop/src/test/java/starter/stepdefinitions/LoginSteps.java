package starter.stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import net.thucydides.core.annotations.Steps;

public class LoginSteps {
    @Steps
    User user;

    @Given("user on login page")
    public void userOnLoginPage() {

    }

    @When("user input valid email")
    public void userInputValidEmail() {

    }

    @When("user input invalid email")
    public void userInputInvalidEmail() {

    }


    @And("user input valid password")
    public void userInputValidPassword() {

    }

    @And("user input valid passwordegative")
    public void userInputValidPasswordegative() {

    }

    @And("user click login button")
    public void userClickLoginButton() {

    }

    @Then("user on products page")
    public void userOnProductsPage() {

    }

    @Then("user see error message")
    public void userSeeErrorMessage() {

    }

}