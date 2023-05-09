package starter.page.ProductCategories;

import net.serenitybdd.rest.SerenityRest;
import org.json.JSONObject;
import net.thucydides.core.annotations.Step;
import static net.serenitybdd.rest.SerenityRest.lastResponse;
public class GetAllCategoriesPage {
    protected static String email="eskyelvayanti06@gmail.com";
    protected static String password="altashop19";
    public String token = "";
    public String endpointAuth = "https://altashop-api.fly.dev/api/categories";

    @Step ("I have endpoint auth")
    public String setPostEndpointAuth(){
        return endpointAuth + "/getallcategories";
    }

    @Step ("I Send endpoint auth")
    public void sendEndpointAuth(){
        String body = "{\n" +
                "    \"email\":" + email + ",\n" +
                "    \"password\":" + password + ",\n" +
                "}";
        JSONObject reqBody = new JSONObject(body);

        SerenityRest.given().header("Content-Type", "application/json").body(reqBody.toString()).post(setPostEndpointAuth());
        token = lastResponse().getBody().jsonPath().get("data");
    }

    @Step ("I set endpoint get")
    public String setEndpointGet(){
        return endpointAuth + "/info";
    }

    @Step ("I send GET HTTP Request")
    public void sendGetUserInfo(){
        SerenityRest.given().header(  "Authorization",  "Bearer " + token).get(setEndpointGet());
    }
}
