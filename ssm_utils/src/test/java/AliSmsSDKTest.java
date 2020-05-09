import com.aliyuncs.exceptions.ClientException;
import com.lk.utils.AliSmsBuilder;
import com.lk.utils.AliSmsCodeEnum;
import org.junit.Test;
import org.springframework.util.StringUtils;

public class AliSmsSDKTest {

    @Test
    public void sendSmsAli() {
        AliSmsBuilder aliSmsBuilder = new AliSmsBuilder();
        String code;
        try {
            code = aliSmsBuilder.setPhoneNum("17320135857")    // 替换成自己的手机号
                    .setSignName("阿里云短信测试专用")  // 替换成自己的阿里云短信服务签名
                    .setTemplateCode("SMS_108565014") // 替换成自己的阿里云短信模板编号
                    .setVerifyCode("Hilox") // 替换成自己随机生成的验证码
                    .send();
        } catch (ClientException e) {
            e.printStackTrace();
            // 短信发送异常提示
            return;
        }

        // 短信异常码处理
        if (code == null || !"OK".equals(code)) {
            String errorMsg = AliSmsCodeEnum.getMsgByCode(code);
            if (!StringUtils.isEmpty(errorMsg)) {
                // 对应短信异常错误提示
                return;
            }
            // 短信发送异常提示
        }
    }
}
