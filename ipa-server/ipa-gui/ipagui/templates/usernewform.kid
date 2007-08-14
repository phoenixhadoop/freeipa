<div xmlns:py="http://purl.org/kid/ns#"
  class="simpleroster">
  <form action="${action}" name="${name}" method="${method}" class="tableform">

    <div class="formsection">Account Details</div>
    <table class="formtable" cellpadding="2" cellspacing="0" border="0">
      <tr>
        <th>
          <label class="fieldlabel" for="${user.uid.field_id}"
            py:content="user.uid.label" />
        </th>
        <td>
          <span py:replace="user.uid.display(value_for(user.uid))" />
          <span py:if="tg.errors.get('uid')" class="fielderror"
              py:content="tg.errors.get('uid')" />
        </td>
      </tr>

      <tr>
        <th>
          <label class="fieldlabel" for="${user.userPassword.field_id}"
            py:content="user.userPassword.label" />
        </th>
        <td>
          <span py:replace="user.userPassword.display(value_for(user.userPassword))" />
          <span py:if="tg.errors.get('userPassword')" class="fielderror"
              py:content="tg.errors.get('userPassword')" />

          <input type="button" value="Generate Password"
              onclick="new Ajax.Request('${tg.url('/generate_password')}',
                {
                  method: 'get',
                  onSuccess: function(transport) {
                    document.getElementById('form_userPassword').value =
                        transport.responseText;
                  }
                });" />
        </td>
      </tr>

      <tr>
        <th>
          <label class="fieldlabel" for="${user.uidNumber.field_id}"
            py:content="user.uidNumber.label" />
        </th>
        <td>
          <span py:replace="user.uidNumber.display(value_for(user.uidNumber))" />
          <span py:if="tg.errors.get('uidNumber')" class="fielderror"
              py:content="tg.errors.get('uidNumber')" />
        </td>
      </tr>

      <tr>
        <th>
          <label class="fieldlabel" for="${user.gidNumber.field_id}"
            py:content="user.gidNumber.label" />
        </th>
        <td>
          <span py:replace="user.gidNumber.display(value_for(user.gidNumber))" />
          <span py:if="tg.errors.get('gidNumber')" class="fielderror"
              py:content="tg.errors.get('gidNumber')" />
        </td>
      </tr>
    </table>

    <div class="formsection">Identity Details</div>
    <table class="formtable" cellpadding="2" cellspacing="0" border="0">
      <tr>
        <th>
          <label class="fieldlabel" for="${user.givenName.field_id}"
            py:content="user.givenName.label" />
        </th>
        <td>
          <span py:replace="user.givenName.display(value_for(user.givenName))" />
          <span py:if="tg.errors.get('givenName')" class="fielderror"
              py:content="tg.errors.get('givenName')" />

        </td>
      </tr>

      <tr>
        <th>
          <label class="fieldlabel" for="${user.sn.field_id}"
            py:content="user.sn.label" />
        </th>
        <td>
          <span py:replace="user.sn.display(value_for(user.sn))" />
          <span py:if="tg.errors.get('sn')" class="fielderror"
              py:content="tg.errors.get('sn')" />
        </td>
      </tr>
    </table>

    <div class="formsection">Contact Details</div>
    <table class="formtable" cellpadding="2" cellspacing="0" border="0">
      <tr>
        <th>
          <label class="fieldlabel" for="${user.mail.field_id}"
            py:content="user.mail.label" />
        </th>
        <td>
          <span py:replace="user.mail.display(value_for(user.mail))" />
          <span py:if="tg.errors.get('mail')" class="fielderror"
              py:content="tg.errors.get('mail')" />
        </td>
      </tr>
      <tr>
        <th>
          <label class="fieldlabel" for="${user.telephoneNumber.field_id}"
            py:content="user.telephoneNumber.label" />
        </th>
        <td>
          <span py:replace="user.telephoneNumber.display(value_for(user.telephoneNumber))" />
          <span py:if="tg.errors.get('telephoneNumber')" class="fielderror"
              py:content="tg.errors.get('telephoneNumber')" />
        </td>
      </tr>
    </table>

    <table class="formtable" cellpadding="2" cellspacing="0" border="0">
      <tr>
        <th>
          <br />
          <input type="submit" class="submitbutton" name="submit" value="Submit"/>
        </th>
        <td>
          <br />
          <input type="submit" class="submitbutton" name="submit" value="Cancel" />
        </td>
        <td></td>
      </tr>
    </table>

  </form>
</div>
